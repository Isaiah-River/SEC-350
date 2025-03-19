░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░<br>
░░░░░███████╗███████╗░██████╗░░░██████╗░███████╗░██████╗░░░░░░<br>
░░░░░██╔════╝██╔════╝██╔════╝░░░╚════██╗██╔════╝██╔═████╗░░░░░<br>
░░░░░███████╗█████╗░░██║░░░█████╗█████╔╝███████╗██║██╔██║░░░░░<br>
░░░░░╚════██║██╔══╝░░██║░░░╚════╝╚═══██╗╚════██║████╔╝██║░░░░░<br>
░░░░░███████║███████╗╚██████╗░░░██████╔╝███████║╚██████╔╝░░░░░<br>
░░░░░╚══════╝╚══════╝░╚═════╝░░░╚═════╝░╚══════╝░╚═════╝░░░░░░<br>
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░<br>

# Navigation
* [Course Description](https://github.com/Isaiah-River/SEC-350/wiki#course-description)
* [Course Outcomes](https://github.com/Isaiah-River/SEC-350/wiki#course-outcomes)
* [IP Address Assignments ](https://github.com/Isaiah-River/SEC-350/wiki#ip-address-assignments)
* [Course Progression](https://github.com/Isaiah-River/SEC-350/wiki#course-progression)
    * [Week 1](https://github.com/Isaiah-River/SEC-350/wiki#week-1)
         * [Lab 1-1 - Routing & DMZ](https://github.com/Isaiah-River/SEC-350/wiki#lab-1-1---routing--dmz)
    * [Week 2](https://github.com/Isaiah-River/SEC-350/wiki)
        * [Lab 2-1 - Standardizing on time](https://github.com/Isaiah-River/SEC-350/wiki#lab-2-1---standardizing-on-time)
        * [Lab 2-2 Syslog Organization on log01](https://github.com/Isaiah-River/SEC-350/wiki#lab-2-2-syslog-organization-on-log01)
    * [Week 3](https://github.com/Isaiah-River/SEC-350/wiki#week-3)
        * [Lab 3‐1 ‐ Segmentation](https://github.com/Isaiah-River/SEC-350/wiki#lab-31--segmentation)
        * [Lab 3‐2 ‐ Wazuh](https://github.com/Isaiah-River/SEC-350/wiki#lab-32--wazuh)
    * [Week 4](#week-4)
        * [Lab 4-1 - Network Firewalls 1](#lab-4-1---network-firewalls-1)
    * [Week 5](#week-5)
        * [Lab 5‐1 ‐ Wazuh WAF](#lab-51--wazuh-waf)
    * [Week 6](#week-6)
        * [Lab 6‐1 ‐ Port Forwarding and Jump Boxes](#lab-61--port-forwarding-and-jump-boxes)
        * [Project 1 ‐ OSQuery](#project-1--osquery)
## Course Description:

Students will examine network-based threats whether originating from the Internet or the local LAN, and learn about ways to protect, detect, and defend the enterprise network from such attacks. The relationship between user network policy and securing the network will also be explored. Students will participate in hands-on experiments and demonstrate their understanding of subject matter via projects and presentations

* Introduction to Information Security, Security Policies and Standards
* Log Management and Analysis
* Intrusion Detection Systems
* Authenticating Users
* Introduction to Network Firewalls and Packet Filtering
* Firewall Configuration and Administration
* Working with Proxy Servers and Application ­Level Firewalls
* Encryption – The Foundation for the Virtual Private Network

## Course Outcomes:
Upon completion of this course, the student will be able to:
* The student will be able to segment, defend and establish visibility over an enterprise network.
* The student will be able to configure network security devices such as network firewalls in order to segment a network and enforce network security policies.
* The student will be able to research, design and deploy a logging infrastructure in order to gain visibility into enterprise security events.
* The student will be able to correlate and analyze network security events in the context of a security information and event management tool
* The student will be able to deploy network proxy servers in order to gain visibility on network traffic
* The student will be able to research, integrate and deploy network intrusion detection tools to complement a logging infrastructure
* The student will be able to research, duplicate and mitigate common network security vulnerabilities.
* The student will be able to design and deploy secure remote access solutions to include site-to-site and remote access use cases.


## IP Address Assignments 
|         fw01,edge01        |             |              | web01,nginx |    log01    |     jump    |        rw01,traveler       |     wks01     |    fw-mgmt   |              | mgmt01(linux) |  wazuh(mgmt)  | mgmt02(windows) |       ca      |
|:--------------------------:|:-----------:|:------------:|:-----------:|:-----------:|:-----------:|:--------------------------:|:-------------:|:------------:|:------------:|:-------------:|:-------------:|:---------------:|:-------------:|
| WAN/24(Different for each) |    DMZ/29   |    LAN/24    |    DMZ/29   |    DMZ/29   |    DMZ/29   | WAN/24(Different for each) |     LAN/24    |    LAN/24    |    MGMT/28   |     LAN/24    |    MGMT/28    |     MGMT/28     |    MGMT/28    |
|         10.0.17.142        | 172.16.50.2 | 172.16.150.2 | 172.16.50.3 | 172.16.50.5 | 172.16.50.4 |         10.0.17.42         | 172.16.150.50 | 172.16.150.3 | 172.16.200.2 | 172.16.150.10 | 172.16.200.10 |  172.16.200.11  | 172.16.200.12 |

## Course Progression

### Week 1:
* [Lecture - Introduction to Network and Security Controls](https://github.com/user-attachments/files/18507198/MOD01-Introduction.to.Network.and.Security.Controls.pptx.pdf)
#### [Lab 1-1 - Routing & DMZ](https://github.com/Isaiah-River/SEC-350/wiki/Lab-1%E2%80%901-%E2%80%90-Routing-&-DMZ)
> **Overview:**
>
> In this [lab](https://github.com/user-attachments/files/18445539/Lab.1.1.-.Routing.and.DMZ.pdf), we began setting up an infrastructure for an enterprise that we will be building throughout the semester.

### Week 2:
* [Lecture - Logging](https://github.com/user-attachments/files/18673434/SEC-350-Module.02.-.Logging.pdf)
* [Lecture - Observations and Discussion](https://github.com/user-attachments/files/18673421/SEC-350.Week.2.-.Observations.and.Discussion.pdf)

#### [Lab 2-1 - Standardizing on time](https://github.com/Isaiah-River/SEC-350/wiki/Lab-2%E2%80%901-%E2%80%90-Standardizing-on-Time)
> **Overview:**
> 
> In this [lab](https://github.com/user-attachments/files/18673243/SEC-350.Lab.2.1.Standardizing.on.Time.1.pdf), I made adjustments to my rsyslog configuration files so that it would capture precise time, so there would be better consistency among my logs. 

#### [Lab 2-2 Syslog Organization on log01](https://github.com/Isaiah-River/SEC-350/wiki/Lab-2%E2%80%902-%E2%80%90-Syslog-Organization-on-log01)
> **Overview:**
>
> In this [lab](https://github.com/user-attachments/files/18673251/SEC-350.Lab.2.2.-.Syslog.Organization.on.log01.pdf), I worked to set up better log organization on log01, so that I would be able to view various types of logs in separate folders for each individual VM. 

### Week 3:
* [Lecture - Segmentation](https://github.com/user-attachments/files/18769257/SEC-350.Mod.3.Notes-Segmentation.pptx.pdf)

#### [Lab 3‐1 ‐ Segmentation](https://github.com/Isaiah-River/SEC-350/wiki/Lab-3%E2%80%901-%E2%80%90-Segmentation)
> **Overview:**
> 
> In this [lab](https://github.com/user-attachments/files/18869693/SEC-350.Lab.3.1.Segmentation.pdf), I worked to set up the MGMT segmentation on my LAN network. This involved setting up a new firewall that will be used between the LAN and MGMT segments.

#### [Lab 3‐2 ‐ Wazuh](https://github.com/Isaiah-River/SEC-350/wiki/Lab-3%E2%80%902-%E2%80%90-Wazuh)
> **Overview:**
> 
> In this [lab](https://github.com/user-attachments/files/18869724/SEC-350.Lab.3.2.-.Wazuh.pdf), I installed a Wazuh server on my wazuh box, connected to it via the mgmt01 box, and installed a Wazuh agent on web01.

### Week 4:
* [Lecture - VyOS Network Firewalls](https://github.com/user-attachments/files/18869652/SEC-350.Module.4.VyOS.Network.Firewalls.pdf)

#### [Lab 4-1 - Network Firewalls 1](https://github.com/Isaiah-River/SEC-350/wiki/Lab-4%E2%80%901-%E2%80%90-Network-Firewalls-1)
> **Overview:**
>
> In this [lab](https://github.com/user-attachments/files/18985472/SEC-350.Lab.4.1.-.Network.Firewalls.1.pdf), I worked to configure my firewalls with much stricter policies. This involved setting up a rule to drop packets by default, and then allowing only the relevant traffic through each segment of my network.

### Week 5:
#### [Lab 5‐1 ‐ Wazuh WAF](https://github.com/Isaiah-River/SEC-350/wiki/Lab-5%E2%80%901-%E2%80%90-Wazuh-WAF)
> **Overview:**
> 
> In this [lab](https://github.com/user-attachments/files/19091586/SEC-350.Lab.5.1.Wazuh.WAF.pdf), I modified web01 by adding a web application firewall (WAF). The Wazuh agent should currently be able to forward Apache error logs so a good deal of the work is already done. After configuring the WAF, I then ran malicious HTTP requests against web01 to see how our WAF performs.

### Week 6:
#### [Lab 6‐1 ‐ Port Forwarding and Jump Boxes](https://github.com/Isaiah-River/SEC-350/wiki/Lab-6%E2%80%901-%E2%80%90-Port-Forwarding-and-Jump-Boxes)
> **Overview:**
>
> In this [lab](https://github.com/user-attachments/files/19341147/SEC-350.Lab.6.1.Port.Forwarding.and.Jump.Boxes.pdf),  I fine tuned my network configurations to remove rw01 static route to my webserver. I also configured port forwarding via NAT for my webserver as well as a newly configured jump box. I then set up SSH keys between jump01 and rw01, and installed a Wazuh agent on jump01.

#### [Project 1 ‐ OSQuery](https://github.com/Isaiah-River/SEC-350/wiki/Project-1-%E2%80%90-OSQuery)
> **Overview:**
>
> In this [project](https://github.com/user-attachments/files/19268458/SEC-350-.Project.1.-.OSQuery.docx), I worked to familiarize myself with OSQuery, a powerful tool that allows one to make various queries to one's system. I then integrated this into Wazuh with some basic logging.

<!--Back to Top button-->
<p align="center";>
<a href="#"><img alt="Static Badge" src="https://img.shields.io/badge/Back%20to%20Top%20-%20Back%20to%20Top?style=flat&color=%23555"></a>
</p>
