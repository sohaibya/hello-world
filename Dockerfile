# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the application source code into the container
COPY . .

# Expose the port your application will run on
EXPOSE 3000

# Command to start the application
CMD ["node", "helloworld.js"]
