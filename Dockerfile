# Use a Node.js base image
FROM node:14

# Sets the directory for following commands
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose the right port
EXPOSE 8080

# The start command of the container
CMD npm install && npm start
