FROM node

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json /app

# Install app dependencies
RUN npm install

# Create app directory
COPY . /app

# Expose the port the app runs on
EXPOSE 80

# Serve the app
CMD ["node", "server.js"]
