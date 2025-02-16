FROM node

# Set the working directory
WORKDIR /app

# Create app directory
COPY . /app

# Install app dependencies
RUN npm install

