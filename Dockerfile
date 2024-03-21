# Use the official Directus image as the base image
FROM directus/directus:10.10.4

# Copy your custom configuration files (if any)
# COPY ./custom-config.js /var/www/html/config/custom-config.js

# Set environment variables for Directus configuration
ENV KEY="255d861b-5ea1-5996-9aa3-922530ec40b1" \
    SECRET="6116487b-cda1-52c2-b5b5-c8022c45e263" \
    DB_CLIENT="pg" \
    DB_HOST="database" \
    DB_PORT="5432" \
    DB_DATABASE="directus" \
    DB_USER="directus" \
    DB_PASSWORD="directus" \
    CACHE_ENABLED="true" \
    CACHE_STORE="redis" \
    REDIS="redis://cache:6379" \
    ADMIN_EMAIL="admin@example.com" \
    ADMIN_PASSWORD="d1r3ctu5"

# Expose port 8055 (if necessary, Directus should already expose this port in its Docker image)
EXPOSE 8055

USER 10014 

# Define the command to run Directus
CMD ["node", "app.js"]
