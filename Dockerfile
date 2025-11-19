# Use Node.js latest version
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if exists)
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of your app source code
COPY . .

# Expose the application port (change if needed)
EXPOSE 8080

# Command to run your Node.js application
CMD ["node", "app.js"]
