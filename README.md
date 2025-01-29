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
Upon completion of this course, the student will be able to
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
* #### [Lecture- Introduction to Network and Security Controls](https://github.com/user-attachments/files/18507198/MOD01-Introduction.to.Network.and.Security.Controls.pptx.pdf)
* #### [Lab 1-1 - Routing & DMZ](https://github.com/Isaiah-River/SEC-350/wiki/Lab-1%E2%80%901-%E2%80%90-Routing-&-DMZ)
> Overview:
>
> In this [lab](https://github.com/user-attachments/files/18445539/Lab.1.1.-.Routing.and.DMZ.pdf), we began setting up an infrastructure for an enterprise that we will be building throughout the semester.
