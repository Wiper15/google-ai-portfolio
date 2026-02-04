# Use a light web server
FROM nginx:alpine

# Copy ALL files from GitHub into the web folder
COPY . /usr/share/nginx/html

# Tell Google Cloud to use Port 8080
EXPOSE 8080

# Overwrite the default Nginx config to use port 8080
RUN sed -i 's/listen \(.*\)80;/listen 8080;/g' /etc/nginx/conf.d/default.conf
