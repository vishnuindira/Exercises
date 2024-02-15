# Use a Node.js base image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
#RUN npm install

# Bundle app source
COPY . .

# Expose the required port
EXPOSE 8080

# Start the server
#CMD ["npm", "start"]
CMD ["/bin/sh", "-c", "npm install && npm start"]
