# Use the official Node.js 14 image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application's code to the container
COPY . .

# Expose the port your app runs on (adjust if different)
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "start"]
