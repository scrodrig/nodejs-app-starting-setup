FROM node

# Set the working directory
WORKDIR /app

# Create app directory
COPY . /app

# Install app dependencies
RUN npm install

# Expose the port the app runs on
EXPOSE 80

# Serve the app
CMD ["node", "server.js"]
