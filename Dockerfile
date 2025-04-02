# Define the parent image for the Node.JS runtime
FROM node:18-alpine

# Set the working directory to the calculator microservice
WORKDIR /calculator_microservice

# Copy the package json files as these contain the service dependancies/config
COPY package*.json ./

# Install the dependancies from the copied files
RUN npm install --omit=dev

# Copy the files from the application
COPY . . 

# Expose the port which the microservice listens to
EXPOSE 3000

# Run the app build using the appropriate command, in our case I'll use the 
# same start script as I used for development, but this would typically be 
# a script to run the production build in the Docker container
CMD ["nodemon", "index.js"]