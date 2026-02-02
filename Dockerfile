FROM nginx:alpine
# Copies EVERYTHING in your GitHub repo into the web folder
COPY . /usr/share/nginx/html
# Forces Nginx to use port 8080 (Cloud Run's favorite port)
RUN sed -i 's/listen       80;/listen       8080;/g' /etc/nginx/conf.d/default.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
