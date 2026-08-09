# DNS and ICMP Incident Analysis

## Scenario

A user cannot access a website. Packet-capture output shows repeated DNS traffic to port 53 followed by ICMP destination-port-unreachable messages.

## Observations

- DNS queries use destination port 53.
- The client repeatedly attempts to resolve the website domain.
- ICMP error messages indicate that the destination service cannot be reached through the expected port.
- The failure prevents normal name resolution and therefore blocks access to the website by domain name.

## Analysis

The packet evidence points to a DNS-service availability or reachability problem rather than a normal web-server response. Possible causes include a stopped DNS service, an incorrect firewall rule, a network-path problem, or an unavailable DNS host.

## Recommended Response

1. Confirm that the DNS server is online.
2. Verify that the DNS service is listening on UDP and TCP port 53.
3. Review firewall and ACL rules affecting DNS traffic.
4. Test reachability with `ping`, `traceroute`, `nslookup`, or `dig`.
5. Check DNS server and firewall logs for errors or blocked traffic.
6. Restore the service or use an approved alternative resolver.
7. Capture traffic again to confirm successful DNS responses.

## Skills Demonstrated

- Packet-capture interpretation
- DNS and ICMP fundamentals
- Incident analysis
- Root-cause reasoning
- Remediation and validation planning

