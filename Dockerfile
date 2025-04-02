# Dockerfile
FROM node:20-alpine

# Set working directory
WORKDIR /calculator_microservice

# Copy package files and install dependencies
COPY calculator_microservice/package*.json ./
RUN npm install

# Copy the rest of the app files
COPY calculator_microservice/ ./

# Expose the service port
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]
