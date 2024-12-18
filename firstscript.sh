#!/bin/bash
# Update the package repository
yum update -y

# Install Apache HTTP Server
yum install -y httpd

# Start and enable Apache
systemctl start httpd
systemctl enable httpd

# Create a webpage with the desired message
echo "<!DOCTYPE html>
<html>
<head>
    <title>EC2 Deployment</title>
</head>
<body style='text-align: center; margin-top: 50px; font-family: Arial, sans-serif;'>
    <h1>We have deployed our first EC2 with a script</h1>
</body>
</html>" > /var/www/html/index.html

# Restart Apache to load the webpage
systemctl restart httpd
