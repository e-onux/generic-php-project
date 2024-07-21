# Use the latest MySQL 8.0 version
FROM mysql:8.0

# Set environment variables
ENV MYSQL_DATABASE=exampledb \
    MYSQL_ROOT_PASSWORD=rootpassword \
    MYSQL_USER=user \
    MYSQL_PASSWORD=password

# Copy the database schema file to the /docker-entrypoint-initdb.d directory
COPY ./mysql/init.sql /docker-entrypoint-initdb.d/

# Apply custom MySQL configuration
COPY ./mysql/my.cnf /etc/mysql/my.cnf