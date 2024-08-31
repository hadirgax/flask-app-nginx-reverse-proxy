# Example of Flask Application Hosted on a Local NGINX Server

This repository provides an example of how to host a Flask application using a local NGINX server. Below are the steps to set up and configure the necessary components.

## Prerequisites

- Python and Flask installed on your local machine.
- NGINX installed on your local machine.

## Steps to Configure

### 1. Add `nginx.conf` File

Add your custom `nginx.conf` file to the configuration folder of your NGINX installation. This folder is typically located at `C:\nginx\conf` on Windows.

### 2. Configure Firewall

Ensure that your firewall allows traffic through port 80 and permits the NGINX application. To do this:

1. Open the Windows Firewall settings.
2. Create a new inbound rule to allow TCP traffic on port 80.
3. Allow the `nginx.exe` application through the firewall.

### 3. Configure Router

Open port 80 on your router to allow external access to your NGINX server. This typically involves logging into your router's admin interface and setting up port forwarding.

## Conclusion

By following these steps, you will have a Flask application hosted on a local NGINX server, accessible through port 80. Make sure to test your setup by accessing the application via your local IP address in a web browser.
