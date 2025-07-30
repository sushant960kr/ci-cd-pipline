touch Dockerfile
cat <<EOT > Dockerfile
FROM devopsedu/webapp

# Update packages
RUN apt-get update -y

# Clear default HTML files
RUN rm -rf /var/www/html/*

# Copy local 'website/' directory into Apache web root
COPY website/ /var/www/html/

# Expose HTTP port
EXPOSE 80

# Run Apache in foreground
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EOT
