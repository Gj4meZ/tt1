# Dockerfile for Nginx setup on Cloudflare Pages with WebSocket and path-based routing

# Use official Nginx image as base
FROM nginx:latest

# Copy custom Nginx configuration to the container
COPY config/nginx.conf /etc/nginx/nginx.conf

# Expose the necessary ports for Nginx
EXPOSE 80
EXPOSE 443

# Copy necessary application files for Cloudflare Pages
COPY . /usr/share/nginx/html

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
