# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Create a new non-root user (replace "myuser" with your desired username)
RUN groupadd -r mygroup && useradd -r -g mygroup myuser

# Set permissions for the application directory
RUN chown -R myuser:mygroup /usr/src/app

# Switch to the non-root user
USER myuser

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Define the command to run the application
CMD ["node", "app.js"]
