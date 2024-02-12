FROM node:14

WORKDIR /usr/service

COPY package.json .
COPY index.js .

EXPOSE 8080

CMD ["npm", "install"]
CMD ["npm", "start"]
