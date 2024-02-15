# Use a Node.js base image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

#Copy package.json and package-lock.json
COPY package*.json ./

# Bundle app source
COPY index.js .

# Expose the required port
EXPOSE 8080

# Install app dependencies & Start the server
CMD ["/bin/sh", "-c", "npm install && npm start"]
