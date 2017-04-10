# nets
Exploring the internet

## Overview
Use `make url=amazon.com` to regenerate this readme with information about the path taken through the network to reach the target machine (the _amazon.com_ server in this example). You'll need [mo](https://github.com/tests-always-included/mo) (and `make`, `ping`, `traceroute`, `dig`, and `whois`).

## Exploration

Examining google.com.

Ping it:
```
PING google.com (216.58.195.238): 56 data bytes
64 bytes from 216.58.195.238: icmp_seq=0 ttl=55 time=20.298 ms
64 bytes from 216.58.195.238: icmp_seq=1 ttl=55 time=14.498 ms
64 bytes from 216.58.195.238: icmp_seq=2 ttl=55 time=59.461 ms
64 bytes from 216.58.195.238: icmp_seq=3 ttl=55 time=16.541 ms
64 bytes from 216.58.195.238: icmp_seq=4 ttl=55 time=14.002 ms

--- google.com ping statistics ---
5 packets transmitted, 5 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 14.002/24.960/59.461/17.392 ms
```

Dig it:
```

; <<>> DiG 9.8.3-P1 <<>> google.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 21277
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;google.com.			IN	A

;; ANSWER SECTION:
google.com.		102	IN	A	216.58.194.174

;; Query time: 25 msec
;; SERVER: 192.168.0.1#53(192.168.0.1)
;; WHEN: Mon Apr 10 01:03:10 2017
;; MSG SIZE  rcvd: 44
```

The full `traceroute` output:
```
 1  96.120.89.117 (96.120.89.117)  9.742 ms  15.503 ms  15.553 ms
 2  te-0-7-0-3-sur03.scotts.ca.sfba.comcast.net (68.86.249.73)  15.087 ms  19.229 ms  28.389 ms
 3  be-221-ar01.santaclara.ca.sfba.comcast.net (69.139.199.205)  15.814 ms  13.108 ms  13.272 ms
 4  be-33651-cr01.sunnyvale.ca.ibone.comcast.net (68.86.90.93)  11.167 ms  24.490 ms  31.661 ms
 5  hu-0-12-0-1-pe02.529bryant.ca.ibone.comcast.net (68.86.87.14)  12.377 ms
    hu-0-11-0-1-pe02.529bryant.ca.ibone.comcast.net (68.86.86.146)  10.400 ms  25.873 ms
 6  as15169-3-c.529bryant.ca.ibone.comcast.net (23.30.206.102)  10.092 ms  10.466 ms
    66.208.228.70 (66.208.228.70)  12.024 ms
 7  108.170.243.1 (108.170.243.1)  13.596 ms  13.472 ms  14.241 ms
 8  108.170.237.119 (108.170.237.119)  25.046 ms  13.391 ms  19.268 ms
 9  sfo03s06-in-f238.1e100.net (216.58.195.238)  16.498 ms  13.720 ms  15.416 ms
```

IP of each hop:
```
108.170.237.119
108.170.243.1
216.58.195.238
23.30.206.102
66.208.228.70
68.86.249.73
68.86.86.146
68.86.87.14
68.86.90.93
69.139.199.205
96.120.89.117
```

Whois lookup of each hop:
```
NetRange:       108.170.192.0 - 108.170.255.255
CIDR:           108.170.192.0/18
NetName:        GOOGLE
NetHandle:      NET-108-170-192-0-1
Parent:         NET108 (NET-108-0-0-0-0)
NetType:        Direct Allocation
OriginAS:       AS15169
Organization:   Google Inc. (GOGL)
RegDate:        2012-02-07
Updated:        2012-02-07
Ref:            https://whois.arin.net/rest/net/NET-108-170-192-0-1
OrgName:        Google Inc.
OrgId:          GOGL
Address:        1600 Amphitheatre Parkway
City:           Mountain View
StateProv:      CA
PostalCode:     94043
Country:        US
RegDate:        2000-03-30
Updated:        2017-01-28
Ref:            https://whois.arin.net/rest/org/GOGL
OrgTechHandle: ZG39-ARIN
OrgTechName:   Google Inc
OrgTechPhone:  +1-650-253-0000
OrgTechEmail:  arin-contact@google.com
OrgTechRef:    https://whois.arin.net/rest/poc/ZG39-ARIN
OrgAbuseHandle: ABUSE5250-ARIN
OrgAbuseName:   Abuse
OrgAbusePhone:  +1-650-253-0000
OrgAbuseEmail:  network-abuse@google.com
OrgAbuseRef:    https://whois.arin.net/rest/poc/ABUSE5250-ARIN
---
NetRange:       108.170.192.0 - 108.170.255.255
CIDR:           108.170.192.0/18
NetName:        GOOGLE
NetHandle:      NET-108-170-192-0-1
Parent:         NET108 (NET-108-0-0-0-0)
NetType:        Direct Allocation
OriginAS:       AS15169
Organization:   Google Inc. (GOGL)
RegDate:        2012-02-07
Updated:        2012-02-07
Ref:            https://whois.arin.net/rest/net/NET-108-170-192-0-1
OrgName:        Google Inc.
OrgId:          GOGL
Address:        1600 Amphitheatre Parkway
City:           Mountain View
StateProv:      CA
PostalCode:     94043
Country:        US
RegDate:        2000-03-30
Updated:        2017-01-28
Ref:            https://whois.arin.net/rest/org/GOGL
OrgTechHandle: ZG39-ARIN
OrgTechName:   Google Inc
OrgTechPhone:  +1-650-253-0000
OrgTechEmail:  arin-contact@google.com
OrgTechRef:    https://whois.arin.net/rest/poc/ZG39-ARIN
OrgAbuseHandle: ABUSE5250-ARIN
OrgAbuseName:   Abuse
OrgAbusePhone:  +1-650-253-0000
OrgAbuseEmail:  network-abuse@google.com
OrgAbuseRef:    https://whois.arin.net/rest/poc/ABUSE5250-ARIN
---
NetRange:       216.58.192.0 - 216.58.223.255
CIDR:           216.58.192.0/19
NetName:        GOOGLE
NetHandle:      NET-216-58-192-0-1
Parent:         NET216 (NET-216-0-0-0-0)
NetType:        Direct Allocation
OriginAS:       AS15169
Organization:   Google Inc. (GOGL)
RegDate:        2012-01-27
Updated:        2012-01-27
Ref:            https://whois.arin.net/rest/net/NET-216-58-192-0-1
OrgName:        Google Inc.
OrgId:          GOGL
Address:        1600 Amphitheatre Parkway
City:           Mountain View
StateProv:      CA
PostalCode:     94043
Country:        US
RegDate:        2000-03-30
Updated:        2017-01-28
Ref:            https://whois.arin.net/rest/org/GOGL
OrgAbuseHandle: ABUSE5250-ARIN
OrgAbuseName:   Abuse
OrgAbusePhone:  +1-650-253-0000
OrgAbuseEmail:  network-abuse@google.com
OrgAbuseRef:    https://whois.arin.net/rest/poc/ABUSE5250-ARIN
OrgTechHandle: ZG39-ARIN
OrgTechName:   Google Inc
OrgTechPhone:  +1-650-253-0000
OrgTechEmail:  arin-contact@google.com
OrgTechRef:    https://whois.arin.net/rest/poc/ZG39-ARIN
---
Comcast Business Communications, LLC COMCAST-44 (NET-23-30-206-0-1) 23.30.206.0 - 23.30.207.255
Comcast Cable Communications, LLC CBC-CM-4 (NET-23-30-0-0-1) 23.30.0.0 - 23.31.255.255
---
Comcast Cable Communications, LLC CBC-CM (NET-66-208-192-0-1) 66.208.192.0 - 66.208.255.255
Comcast Business Communications, LLC COMCAST-48 (NET-66-208-228-0-1) 66.208.228.0 - 66.208.229.255
Comcast Cable Communications, LLC IBONE-CCCS-5 (NET-66-208-228-0-2) 66.208.228.0 - 66.208.229.255
Comcast Cable Communications, LLC IBONE-CCCS-5 (NET-66-208-228-0-3) 66.208.228.0 - 66.208.229.255
---
Comcast Cable Communications, LLC JUMPSTART-2 (NET-68-80-0-0-1) 68.80.0.0 - 68.87.255.255
Comcast Cable Communications, Inc. COMCAST-8 (NET-68-86-128-0-1) 68.86.128.0 - 68.86.255.255
---
Comcast Cable Communications, LLC JUMPSTART-2 (NET-68-80-0-0-1) 68.80.0.0 - 68.87.255.255
Comcast Cable Communications, Inc. COMCAST-16 (NET-68-86-64-0-1) 68.86.64.0 - 68.86.127.255
---
Comcast Cable Communications, LLC JUMPSTART-2 (NET-68-80-0-0-1) 68.80.0.0 - 68.87.255.255
Comcast Cable Communications, Inc. COMCAST-16 (NET-68-86-64-0-1) 68.86.64.0 - 68.86.127.255
---
Comcast Cable Communications, LLC JUMPSTART-2 (NET-68-80-0-0-1) 68.80.0.0 - 68.87.255.255
Comcast Cable Communications, Inc. COMCAST-16 (NET-68-86-64-0-1) 68.86.64.0 - 68.86.127.255
---
Comcast Cable Communications, Inc. COMCAST-43 (NET-69-139-192-0-1) 69.139.192.0 - 69.139.207.255
Comcast Cable Communications, LLC JUMPSTART-3 (NET-69-136-0-0-1) 69.136.0.0 - 69.143.255.255
---
Comcast Cable Communications, LLC CABLE-1 (NET-96-64-0-0-1) 96.64.0.0 - 96.124.255.255
Comcast IP Services, L.L.C. SFBA-CDM-15 (NET-96-120-88-0-1) 96.120.88.0 - 96.120.95.255
```

Dig each hop:
```

; <<>> DiG 9.8.3-P1 <<>> -x 108.170.237.119
;; global options: +cmd
;; connection timed out; no servers could be reached

; <<>> DiG 9.8.3-P1 <<>> -x 108.170.243.1
;; global options: +cmd
;; connection timed out; no servers could be reached

; <<>> DiG 9.8.3-P1 <<>> -x 216.58.195.238
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 18120
;; flags: qr rd ra; QUERY: 1, ANSWER: 4, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;238.195.58.216.in-addr.arpa.	IN	PTR

;; ANSWER SECTION:
238.195.58.216.in-addr.arpa. 52913 IN	PTR	sfo03s06-in-f14.1e100.net.
238.195.58.216.in-addr.arpa. 52913 IN	PTR	sfo03s06-in-f238.1e100.net.
238.195.58.216.in-addr.arpa. 52913 IN	PTR	sfo03s06-in-f14.1e100.net.

;; Query time: 14 msec
;; SERVER: 192.168.0.1#53(192.168.0.1)
;; WHEN: Mon Apr 10 01:05:25 2017
;; MSG SIZE  rcvd: 143

; <<>> DiG 9.8.3-P1 <<>> -x 23.30.206.102
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 2226
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;102.206.30.23.in-addr.arpa.	IN	PTR

;; ANSWER SECTION:
102.206.30.23.in-addr.arpa. 4652 IN	PTR	as15169-3-c.529bryant.ca.ibone.comcast.net.

;; Query time: 17 msec
;; SERVER: 192.168.0.1#53(192.168.0.1)
;; WHEN: Mon Apr 10 01:05:25 2017
;; MSG SIZE  rcvd: 100

; <<>> DiG 9.8.3-P1 <<>> -x 66.208.228.70
;; global options: +cmd
;; connection timed out; no servers could be reached

; <<>> DiG 9.8.3-P1 <<>> -x 68.86.249.73
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 64884
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;73.249.86.68.in-addr.arpa.	IN	PTR

;; ANSWER SECTION:
73.249.86.68.in-addr.arpa. 7200	IN	PTR	te-0-7-0-3-sur03.scotts.ca.sfba.comcast.net.

;; Query time: 11 msec
;; SERVER: 192.168.0.1#53(192.168.0.1)
;; WHEN: Mon Apr 10 01:05:40 2017
;; MSG SIZE  rcvd: 100

; <<>> DiG 9.8.3-P1 <<>> -x 68.86.86.146
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 56454
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;146.86.86.68.in-addr.arpa.	IN	PTR

;; ANSWER SECTION:
146.86.86.68.in-addr.arpa. 5031	IN	PTR	hu-0-11-0-1-pe02.529bryant.ca.ibone.comcast.net.

;; Query time: 28 msec
;; SERVER: 192.168.0.1#53(192.168.0.1)
;; WHEN: Mon Apr 10 01:05:40 2017
;; MSG SIZE  rcvd: 104

; <<>> DiG 9.8.3-P1 <<>> -x 68.86.87.14
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 39316
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;14.87.86.68.in-addr.arpa.	IN	PTR

;; ANSWER SECTION:
14.87.86.68.in-addr.arpa. 5102	IN	PTR	hu-0-12-0-1-pe02.529bryant.ca.ibone.comcast.net.

;; Query time: 13 msec
;; SERVER: 192.168.0.1#53(192.168.0.1)
;; WHEN: Mon Apr 10 01:05:40 2017
;; MSG SIZE  rcvd: 103

; <<>> DiG 9.8.3-P1 <<>> -x 68.86.90.93
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 3941
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;93.90.86.68.in-addr.arpa.	IN	PTR

;; ANSWER SECTION:
93.90.86.68.in-addr.arpa. 4269	IN	PTR	be-33651-cr01.sunnyvale.ca.ibone.comcast.net.

;; Query time: 20 msec
;; SERVER: 192.168.0.1#53(192.168.0.1)
;; WHEN: Mon Apr 10 01:05:40 2017
;; MSG SIZE  rcvd: 100

; <<>> DiG 9.8.3-P1 <<>> -x 69.139.199.205
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 42180
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;205.199.139.69.in-addr.arpa.	IN	PTR

;; ANSWER SECTION:
205.199.139.69.in-addr.arpa. 7200 IN	PTR	be-221-ar01.santaclara.ca.sfba.comcast.net.

;; Query time: 76 msec
;; SERVER: 192.168.0.1#53(192.168.0.1)
;; WHEN: Mon Apr 10 01:05:40 2017
;; MSG SIZE  rcvd: 101

; <<>> DiG 9.8.3-P1 <<>> -x 96.120.89.117
;; global options: +cmd
;; connection timed out; no servers could be reached
```

Ping each hop:
```
PING 108.170.237.119 (108.170.237.119): 56 data bytes
--- 108.170.237.119 ping statistics ---
1 packets transmitted, 0 packets received, 100.0% packet loss
PING 108.170.243.1 (108.170.243.1): 56 data bytes
64 bytes from 108.170.243.1: icmp_seq=0 ttl=57 time=13.618 ms
--- 108.170.243.1 ping statistics ---
1 packets transmitted, 1 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 13.618/13.618/13.618/0.000 ms
PING 216.58.195.238 (216.58.195.238): 56 data bytes
64 bytes from 216.58.195.238: icmp_seq=0 ttl=55 time=15.747 ms
--- 216.58.195.238 ping statistics ---
1 packets transmitted, 1 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 15.747/15.747/15.747/0.000 ms
PING 23.30.206.102 (23.30.206.102): 56 data bytes
64 bytes from 23.30.206.102: icmp_seq=0 ttl=59 time=17.267 ms
--- 23.30.206.102 ping statistics ---
1 packets transmitted, 1 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 17.267/17.267/17.267/0.000 ms
PING 66.208.228.70 (66.208.228.70): 56 data bytes
64 bytes from 66.208.228.70: icmp_seq=0 ttl=59 time=20.125 ms
--- 66.208.228.70 ping statistics ---
1 packets transmitted, 1 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 20.125/20.125/20.125/0.000 ms
PING 68.86.249.73 (68.86.249.73): 56 data bytes
64 bytes from 68.86.249.73: icmp_seq=0 ttl=254 time=10.096 ms
--- 68.86.249.73 ping statistics ---
1 packets transmitted, 1 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 10.096/10.096/10.096/0.000 ms
PING 68.86.86.146 (68.86.86.146): 56 data bytes
64 bytes from 68.86.86.146: icmp_seq=0 ttl=251 time=11.652 ms
--- 68.86.86.146 ping statistics ---
1 packets transmitted, 1 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 11.652/11.652/11.652/0.000 ms
PING 68.86.87.14 (68.86.87.14): 56 data bytes
64 bytes from 68.86.87.14: icmp_seq=0 ttl=251 time=14.106 ms
--- 68.86.87.14 ping statistics ---
1 packets transmitted, 1 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 14.106/14.106/14.106/0.000 ms
PING 68.86.90.93 (68.86.90.93): 56 data bytes
64 bytes from 68.86.90.93: icmp_seq=0 ttl=61 time=12.086 ms
--- 68.86.90.93 ping statistics ---
1 packets transmitted, 1 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 12.086/12.086/12.086/0.000 ms
PING 69.139.199.205 (69.139.199.205): 56 data bytes
64 bytes from 69.139.199.205: icmp_seq=0 ttl=253 time=19.813 ms
--- 69.139.199.205 ping statistics ---
1 packets transmitted, 1 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 19.813/19.813/19.813/0.000 ms
PING 96.120.89.117 (96.120.89.117): 56 data bytes
64 bytes from 96.120.89.117: icmp_seq=0 ttl=255 time=41.426 ms
--- 96.120.89.117 ping statistics ---
1 packets transmitted, 1 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 41.426/41.426/41.426/0.000 ms
```
