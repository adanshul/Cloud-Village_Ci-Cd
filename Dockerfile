FROM nginx:latest

# Copy the Nginx configuration
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy the deploy script
COPY scripts/deploy.sh /deploy.sh
RUN chmod +x /deploy.sh

# Copy the static content
COPY static/ /usr/share/nginx/html/

# Execute the deploy script during container startup
CMD ["/bin/bash", "/deploy.sh"]