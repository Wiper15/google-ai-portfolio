# Use a lightweight web server as a base
FROM nginx:alpine

# Copy your website files (HTML, CSS, JS) into the web server folder
# Replace '.' with your folder name if your files are in a subfolder like 'public'
COPY . /usr/share/nginx/html

# Expose port 80 to the internet
EXPOSE 80

# Start the web server
CMD ["nginx", "-g", "daemon off;"]
