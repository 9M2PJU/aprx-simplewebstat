# Use an official PHP image with Apache
FROM php:7.4-apache

# Copy the application files to the web server's root directory
COPY . /var/www/html/

# Set the working directory
WORKDIR /var/www/html/

# Expose port 80
EXPOSE 80
