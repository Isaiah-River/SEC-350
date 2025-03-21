#!/bin/vbash
source /opt/vyatta/etc/functions/script-template

configure

# Firewall Rules
set firewall name DMZ-to-LAN default-action 'drop'
set firewall name DMZ-to-LAN enable-default-log
set firewall name DMZ-to-LAN rule 1 action 'accept'
set firewall name DMZ-to-LAN rule 1 state established 'enable'
set firewall name DMZ-to-LAN rule 1 state related 'enable'
set firewall name DMZ-to-LAN rule 10 action 'accept'
set firewall name DMZ-to-LAN rule 10 destination address '172.16.200.10'
set firewall name DMZ-to-LAN rule 10 destination port '1514,1515'
set firewall name DMZ-to-LAN rule 10 protocol 'tcp'

set firewall name DMZ-to-WAN default-action 'accept'
set firewall name DMZ-to-WAN enable-default-log
set firewall name DMZ-to-WAN rule 1 action 'accept'
set firewall name DMZ-to-WAN rule 1 state established 'enable'

set firewall name LAN-to-DMZ default-action 'drop'
set firewall name LAN-to-DMZ enable-default-log
set firewall name LAN-to-DMZ rule 1 action 'accept'
set firewall name LAN-to-DMZ rule 1 state established 'enable'
set firewall name LAN-to-DMZ rule 10 action 'accept'
set firewall name LAN-to-DMZ rule 10 destination address '172.16.50.3'
set firewall name LAN-to-DMZ rule 10 destination port '80,443'
set firewall name LAN-to-DMZ rule 10 protocol 'tcp'
set firewall name LAN-to-DMZ rule 10 source address '172.16.150.0/24'
set firewall name LAN-to-DMZ rule 20 action 'accept'
set firewall name LAN-to-DMZ rule 20 destination address '172.16.50.0/29'
set firewall name LAN-to-DMZ rule 20 destination port '22'
set firewall name LAN-to-DMZ rule 20 protocol 'tcp'
set firewall name LAN-to-DMZ rule 20 source address '172.16.150.10'

set firewall name LAN-to-WAN enable-default-log
set firewall name LAN-to-WAN rule 1 action 'accept'

set firewall name WAN-to-DMZ default-action 'drop'
set firewall name WAN-to-DMZ enable-default-log
set firewall name WAN-to-DMZ rule 1 action 'accept'
set firewall name WAN-to-DMZ rule 1 state established 'enable'
set firewall name WAN-to-DMZ rule 10 action 'accept'
set firewall name WAN-to-DMZ rule 10 description 'Allow HTTP from WAN to DMZ'
set firewall name WAN-to-DMZ rule 10 destination address '172.16.50.3'
set firewall name WAN-to-DMZ rule 10 destination port '80'
set firewall name WAN-to-DMZ rule 10 protocol 'tcp'
set firewall name WAN-to-DMZ rule 20 action 'accept'
set firewall name WAN-to-DMZ rule 20 description 'ssh capabilities'
set firewall name WAN-to-DMZ rule 20 destination address '172.16.50.4'
set firewall name WAN-to-DMZ rule 20 destination port '22'
set firewall name WAN-to-DMZ rule 20 protocol 'tcp'

set firewall name WAN-to-LAN default-action 'drop'
set firewall name WAN-to-LAN enable-default-log
set firewall name WAN-to-LAN rule 10 action 'accept'
set firewall name WAN-to-LAN rule 10 state established 'enable'
set firewall name WAN-to-LAN rule 10 state related 'enable'

# Network Interfaces
set interfaces ethernet eth0 address '10.0.17.142/24'
set interfaces ethernet eth0 description 'SEC-350-WAN'
set interfaces ethernet eth1 address '172.16.50.2/29'
set interfaces ethernet eth1 description 'SEC-350-DMZ'
set interfaces ethernet eth2 address '172.16.150.2/24'
set interfaces ethernet eth2 description 'SEC-350-LAN'

# NAT Rules
set nat destination rule 10 description 'HTTP -> web01'
set nat destination rule 10 destination port '80'
set nat destination rule 10 inbound-interface 'eth0'
set nat destination rule 10 protocol 'tcp'
set nat destination rule 10 translation address '172.16.50.3'
set nat destination rule 10 translation port '80'

set nat destination rule 20 description 'ssh to jump'
set nat destination rule 20 destination port '22'
set nat destination rule 20 inbound-interface 'eth0'
set nat destination rule 20 protocol 'tcp'
set nat destination rule 20 translation address '172.16.50.4'

set nat source rule 10 description 'NAT from DMZ to WAN'
set nat source rule 10 outbound-interface 'eth0'
set nat source rule 10 source address '172.16.50.0/29'
set nat source rule 10 translation address 'masquerade'

set nat source rule 20 description 'NAT from LAN to WAN'
set nat source rule 20 outbound-interface 'eth0'
set nat source rule 20 source address '172.16.150.0/24'
set nat source rule 20 translation address 'masquerade'

set nat source rule 30 description 'NAT from MGMT to WAN'
set nat source rule 30 outbound-interface 'eth0'
set nat source rule 30 source address '172.16.200.0/28'
set nat source rule 30 translation address 'masquerade'

# Routing and Protocols
set protocols rip interface eth2
set protocols rip network '172.16.50.0/29'
set protocols static route 0.0.0.0/0 next-hop 10.0.17.2

# DNS & SSH
set service dns forwarding allow-from '172.16.50.0/29'
set service dns forwarding allow-from '172.16.150.0/24'
set service dns forwarding listen-address '172.16.50.2'
set service dns forwarding listen-address '172.16.150.2'
set service dns forwarding system
set service ssh listen-address '172.16.150.2'

# System Configuration
set system host-name 'edge01-isaiah'
set system name-server '10.0.17.2'
set system syslog host 172.16.50.5 facility authpriv

# Zone Policies
set zone-policy zone DMZ from LAN firewall name 'LAN-to-DMZ'
set zone-policy zone DMZ from WAN firewall name 'WAN-to-DMZ'
set zone-policy zone DMZ interface 'eth1'
set zone-policy zone LAN from DMZ firewall name 'DMZ-to-LAN'
set zone-policy zone LAN from WAN firewall name 'WAN-to-LAN'
set zone-policy zone LAN interface 'eth2'
set zone-policy zone WAN from DMZ firewall name 'DMZ-to-WAN'
set zone-policy zone WAN from LAN firewall name 'LAN-to-WAN'
set zone-policy zone WAN interface 'eth0'

# Additional Firewall Rules
set firewall name DMZ-to-WAN rule 998 action 'accept'
set firewall name DMZ-to-WAN rule 998 source address '172.16.50.3'

commit
save
exit
