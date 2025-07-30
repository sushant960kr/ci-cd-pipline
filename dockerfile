touch dockerfile 
cat <<EOT>> dockerfile
FROM devopsedu/webapp
#Updating the Repository
RUN apt-get update -y
#Copy Application Files to the required location
RUN rm -rf /var/www/html/*
COPY website /var/www/html/
#Open port 80
EXPOSE 8080
#Start Apache service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EOT
