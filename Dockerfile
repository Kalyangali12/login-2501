# Start with the Nginx image
FROM nginx

# Set the working directory (optional but makes it more explicit)
WORKDIR /usr/share/nginx/html

# Copy only the necessary files (assumes you're using React, so 'build' is the directory created)
COPY build/ /usr/share/nginx/html/

# Expose port 80 (the default port for Nginx)
EXPOSE 80
