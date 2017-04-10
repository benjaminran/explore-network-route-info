URL=google.com
OUT=README.md
IP=((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])

$(OUT): README.md.template ping.txt dig.txt traceroute.txt ip.traceroute.txt whois.txt dig.hops.txt ping.hops.txt
	url=$(URL) \
	ping_txt=$$(cat ping.txt) \
	dig_txt=$$(cat dig.txt) \
	traceroute_txt=$$(cat traceroute.txt) \
	ip_traceroute_txt=$$(cat ip.traceroute.txt) \
	whois_txt=$$(cat whois.txt) \
	dig_hops_txt=$$(cat dig.hops.txt) \
	ping_hops_txt=$$(cat ping.hops.txt) \
	mo $< | tee $@

ping.txt:
	ping -c 5 $(URL) | tee $@

dig.txt:
	dig $(URL) | tee $@

# trace route to url
traceroute.txt:
	traceroute $(URL) | tee $@

# get ips of each hop in route
ip.traceroute.txt: traceroute.txt
	cat $< | grep -oE '$(IP)' | sort | uniq | tee $@

# whois each ip along route (filter misses and separate results with '---')
whois.txt: ip.traceroute.txt
	cat $< | while read ip; do echo '---'; whois $${ip} | ([[ "$$(grep 'No match for' | wc -l)" = "0" ]] || whois $${ip}); done | tail -n +2 | grep -v '^#' | sed '/^$$/d' | tee -a $@

# reverse dns lookup each ip in route
dig.hops.txt: ip.traceroute.txt
	cat $< | while read ip; do dig -x $$ip; done | uniq | tee $@

# ping each ip in route
ping.hops.txt: ip.traceroute.txt
	cat $< | while read ip; do ping -c 1 $$ip; done | sed '/^$$/d' | tee $@

clean:
	- rm ping.txt dig.txt traceroute.txt ip.traceroute.txt whois.txt dig.hops.txt ping.hops.txt $(OUT)
