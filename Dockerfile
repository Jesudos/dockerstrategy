FROM node:8

#create app directory

WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure to copy both package.json and package-lock.json

COPY package*.json ./

RUN npm install

#for production mode
#RUN npm install --only=production 

#Bundle App Source

COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]
