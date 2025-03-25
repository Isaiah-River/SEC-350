#!/bin/bash

# Log file location
LOG_FILE="/var/log/dhcp_server_setup.log"

# Function to log and execute commands
execute() {
    echo "Executing: $1" | tee -a "$LOG_FILE"
    eval "$1" >> "$LOG_FILE" 2>&1
    if [ $? -ne 0 ]; then
        echo "Error executing: $1" | tee -a "$LOG_FILE"
        exit 1
    fi
}

# Backup and replace Netplan config
execute "sudo mv /etc/netplan/00-installer-config.yaml /etc/netplan/00-installer-config.yaml.old"
execute "sudo cp /home/champuser/00-installer-config.yaml /etc/netplan/00-installer-config.yaml"

# Apply Netplan changes
execute "sudo netplan apply"

# Copy DHCP configuration files
execute "sudo cp /home/champuser/isc-dhcp-server /etc/default/isc-dhcp-server"
execute "sudo cp /home/champuser/dhcpd.conf /etc/dhcp/dhcpd.conf"

# Configure firewall for DHCP
execute "sudo ufw allow 67/udp"
execute "sudo ufw allow 68/udp"
execute "sudo ufw reload"

# Start and enable DHCP server
execute "sudo systemctl start isc-dhcp-server"
execute "sudo systemctl enable isc-dhcp-server"

echo "DHCP server setup complete. Check $LOG_FILE for details."
