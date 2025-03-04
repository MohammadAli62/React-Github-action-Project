<<<<<<< HEAD
FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

CMD [ "node", "server.js" ]

=======
# Step 1: Use a Node.js base image
FROM node:16-alpine

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Copy package.json and package-lock.json
COPY package*.json ./

# Step 4: Install dependenciess
RUN npm install

# Step 5: Update caniuse-lite
RUN npx update-browserslist-db@latest --update-db

# Step 6: Copy the entire application
COPY . .

# Step 7: Expose the application port (React's default is 3000)
EXPOSE 3000

# Step 8: Run the applicatione
CMD ["npm", "start"]
>>>>>>> da4ac8bda3c8a55cda975ea307b7c1b7542ea4ad
