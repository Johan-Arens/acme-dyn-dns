$ORIGIN .
$TTL 86400	; 1 day
test.acme.com		IN SOA	ns1.test.acme.com. hostmaster.test.acme.com. (
				2002061902 ; serial
				3600       ; refresh (1 hour)
				900        ; retry (15 minutes)
				2592000    ; expire (4 weeks 2 days)
				3600       ; minimum (1 hour)
				)
			NS	ns1.test.acme.com.
$ORIGIN test.acme.com.
gw			A	192.168.48.1
ns1			A	10.11.128.35
