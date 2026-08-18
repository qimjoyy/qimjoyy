# ENSA Assignment

## Enterprise Networking, Security, and Automation

**Course:** NMK40803 Enterprise Networking, Security, and Automation  
**Institution:** Universiti Malaysia Perlis (UniMAP)  
**Student:** Naqimuddin Aqil Bin Burhanuddin  
**Matric No.:** 221302401  
**Platform:** Cisco Packet Tracer

## Project Overview

This academic networking project was completed for the Enterprise Networking, Security, and Automation course at UniMAP. The lab focuses on IPv4 VLSM subnetting, Cisco IOS router configuration, Single-Area OSPFv2, OSPF optimization, and extended ACL security policies.

> This repository entry documents an academic lab and should not be interpreted as production network experience.

## Learning Objectives

- Design an IPv4 addressing plan using VLSM.
- Configure Cisco router interfaces and end devices.
- Configure and verify Single-Area OSPFv2.
- Optimize OSPF using passive interfaces, reference bandwidth, and timer tuning.
- Implement extended ACL policies for SSH, web traffic, and ICMP.
- Validate configurations using Cisco IOS show commands and connectivity tests.

## Topology

The assignment uses three routers (R1, R2, and R3), four LAN segments, and two serial WAN links.

```text
LAN 1 ---- R1 ---- Serial 1 ---- R2 ---- Serial 2 ---- R3 ---- LAN 3
             |                                             |
           LAN 2                                         LAN 4
```

## Addressing

| Network | Prefix | Purpose |
|---|---:|---|
| LAN 1 | /29 | PC1 and Laptop1 network |
| LAN 2 | /28 | Laptop2 network |
| LAN 3 | /27 | PC2 and Server1 network |
| LAN 4 | /26 | Laptop3 and Server2 network |
| Serial 1 | /30 | R1-R2 WAN link |
| Serial 2 | /30 | R2-R3 WAN link |

The LAN subnets are derived from the `192.168.1.0/24` address space using VLSM. The WAN links use `10.10.10.0/30` and `20.20.20.0/30`.

## OSPFv2

Single-Area OSPFv2 is configured using:

- OSPF process ID: `44`
- R1 router ID: `3.3.3.3`
- R2 router ID: `4.4.4.4`
- R3 router ID: `6.6.6.6`
- Single OSPF area: Area 0

### OSPF Optimization

The project also configures:

- Passive interfaces on interfaces without OSPF neighbors.
- OSPF reference bandwidth of 1 Gbps.
- Hello interval: 30 seconds.
- Dead interval: 120 seconds.

## Security: Extended ACL

Five ACL policies are implemented:

1. LAN1 is denied SSH access to LAN4 while other SSH traffic remains permitted.
2. PC2 is denied HTTP/HTTPS access to LAN1.
3. Laptop2 may send ICMP echo requests only to Server1.
4. Laptop3 may send ICMP echo requests only to PC1.
5. Server1 may use SSH to access LAN1 while other SSH access is denied.

ACL numbers used by the assignment are `110` through `114`.

## Verification

Recommended verification evidence includes:

```text
show ip interface brief
show ip route
show ip ospf neighbor
show ip protocols
show access-lists
```

Connectivity and ACL behavior should be validated using `ping`, web access tests, SSH tests, and the relevant Cisco IOS verification commands.

## Files

- `221302401.pka` — Cisco Packet Tracer project file.
- `README.md` — Portfolio documentation.
- `addressing-table.md` — Addressing and VLSM reference.
- `ospf-configuration.md` — OSPFv2 and optimization reference.
- `acl-policies.md` — ACL policy and validation reference.

## Skills Demonstrated

`IPv4` `VLSM` `Subnetting` `Cisco IOS` `OSPFv2` `Routing` `Extended ACL` `Network Security` `Packet Tracer` `Network Verification`

## Academic Context

This project demonstrates practical configuration and testing skills developed through the UniMAP Enterprise Networking, Security, and Automation course. It complements the networking and cybersecurity projects in this portfolio.
