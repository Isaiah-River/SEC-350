#!/bin/bash

# Log file location
LOG_FILE="/var/log/webserver_setup.log"

# Function to log and execute commands
execute() {
    echo "Executing: $1" | tee -a "$LOG_FILE"
    eval "$1" >> "$LOG_FILE" 2>&1
    if [ $? -ne 0 ]; then
        echo "Error executing: $1" | tee -a "$LOG_FILE"
        exit 1
    fi
}

# Backup and replace index file
execute "sudo mv /var/www/html/index.nginx-debian.html /var/www/html/index.nginx-debian.html.old"
execute "sudo cp /home/champuser/index.html /var/www/html/index.html"

# Backup and replace Netplan config
execute "sudo mv /etc/netplan/00-installer-config.yaml /etc/netplan/00-installer-config.yaml.old"
execute "sudo cp /home/champuser/00-installer-config.yaml /etc/netplan/00-installer-config.yaml"

# Apply Netplan changes
execute "sudo netplan apply"

# Configure firewall rules
execute "sudo firewall-cmd --zone=public --add-port=80/tcp --permanent"
execute "sudo firewall-cmd --zone=public --add-port=443/tcp --permanent"
execute "sudo firewall-cmd --reload"

# Start and enable Nginx
execute "sudo systemctl start nginx"
execute "sudo systemctl enable nginx"
execute "sudo systemctl restart nginx"

echo "Setup complete. Check $LOG_FILE for details."
