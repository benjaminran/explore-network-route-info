# nets
Exploring the internet

## Overview
Use `make url=amazon.com` to regenerate this readme with information about the path taken through the network to reach the target machine (the _amazon.com_ server in this example). You'll need [mo](https://github.com/tests-always-included/mo) (and `make`, `ping`, `traceroute`, `dig`, and `whois`).

## Exploration

Examining google.com.

Ping it:
```
PING google.com (216.58.195.238): 56 data bytes
64 bytes from 216.58.195.238: icmp_seq=0 ttl=55 time=14.532 ms
64 bytes from 216.58.195.238: icmp_seq=1 ttl=55 time=16.337 ms
64 bytes from 216.58.195.238: icmp_seq=2 ttl=55 time=13.886 ms
64 bytes from 216.58.195.238: icmp_seq=3 ttl=55 time=23.964 ms
64 bytes from 216.58.195.238: icmp_seq=4 ttl=55 time=15.669 ms

--- google.com ping statistics ---
5 packets transmitted, 5 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 13.886/16.878/23.964/3.645 ms
```

Dig it:
```

; <<>> DiG 9.8.3-P1 <<>> google.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 47118
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;google.com.			IN	A

;; ANSWER SECTION:
google.com.		236	IN	A	216.58.195.238

;; Query time: 14 msec
;; SERVER: 192.168.0.1#53(192.168.0.1)
;; WHEN: Sun Apr  9 22:29:57 2017
;; MSG SIZE  rcvd: 44
```

The full `traceroute` output:
```
 1  96.120.89.117 (96.120.89.117)  14.755 ms  12.714 ms  12.611 ms
 2  te-0-7-0-3-sur03.scotts.ca.sfba.comcast.net (68.86.249.73)  15.549 ms  18.081 ms  15.948 ms
 3  be-221-ar01.santaclara.ca.sfba.comcast.net (69.139.199.205)  24.610 ms  20.480 ms  15.392 ms
 4  be-33651-cr01.sunnyvale.ca.ibone.comcast.net (68.86.90.93)  45.985 ms  51.201 ms  25.264 ms
 5  hu-0-10-0-0-pe02.529bryant.ca.ibone.comcast.net (68.86.86.26)  16.013 ms
    hu-0-12-0-1-pe02.529bryant.ca.ibone.comcast.net (68.86.87.14)  43.925 ms
    hu-0-11-0-1-pe02.529bryant.ca.ibone.comcast.net (68.86.86.146)  30.679 ms
 6  as15169-3-c.529bryant.ca.ibone.comcast.net (23.30.206.102)  32.585 ms
    66.208.228.70 (66.208.228.70)  11.212 ms
    as15169-3-c.529bryant.ca.ibone.comcast.net (23.30.206.102)  21.556 ms
 7  108.170.243.1 (108.170.243.1)  13.971 ms
    108.170.242.225 (108.170.242.225)  17.063 ms *
 8  108.170.237.119 (108.170.237.119)  94.725 ms  90.183 ms
    108.170.237.9 (108.170.237.9)  302.622 ms
 9  sfo03s06-in-f238.1e100.net (216.58.195.238)  281.241 ms  1582.672 ms  466.468 ms
```

IP of each hop:
```
108.170.237.119
108.170.237.9
108.170.242.225
108.170.243.1
216.58.195.238
23.30.206.102
66.208.228.70
68.86.249.73
68.86.86.146
68.86.86.26
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
Comcast Cable Communications, LLC JUMPSTART-2 (NET-68-80-0-0-1) 68.80.0.0 - 68.87.255.255
Comcast Cable Communications, Inc. COMCAST-16 (NET-68-86-64-0-1) 68.86.64.0 - 68.86.127.255
---
Comcast Cable Communications, Inc. COMCAST-43 (NET-69-139-192-0-1) 69.139.192.0 - 69.139.207.255
Comcast Cable Communications, LLC JUMPSTART-3 (NET-69-136-0-0-1) 69.136.0.0 - 69.143.255.255
---
Comcast Cable Communications, LLC CABLE-1 (NET-96-64-0-0-1) 96.64.0.0 - 96.124.255.255
Comcast IP Services, L.L.C. SFBA-CDM-15 (NET-96-120-88-0-1) 96.120.88.0 - 96.120.95.255
```
