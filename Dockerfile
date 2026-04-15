# Use a lightweight web server image
# FROM defines the base image for our Docker image. In this case, we are using the official nginx image based on Alpine Linux, which is a minimal and efficient base image.
FROM nginx:alpine

# Copy project files into the container
# Executes commands during image build
RUN rm -rf /usr/share/nginx/html/*

# Copy our HTML file into the nginx web directory
# COPY copies files from your local machine into the container.
COPY index.html /usr/share/nginx/html/

# Start nginx when the container runs
# CMD specifies the command to run when the container starts. Here, we are starting nginx in the foreground to keep the container running.
CMD ["nginx", "-g", "daemon off;"]