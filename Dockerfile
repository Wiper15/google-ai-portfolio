FROM nginx:alpine

# Copy your portfolio files
COPY . /usr/share/nginx/html

# Replace the default Nginx config to listen on 8080
RUN sed -i 's/listen       80;/listen       8080;/g' /etc/nginx/conf.d/default.conf

# Expose 8080 to match Cloud Run's expectation
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]

