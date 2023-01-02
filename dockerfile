FROM  node:18
# Create app directory
WORKDIR  /src/app 
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "index.js" ]
