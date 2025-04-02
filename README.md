# sit323-2025-prac5p

Description

## Getting Started

- The original project cloned for the microservice is a simple Node.js REST Server
- Simply `npm install` from the microservice root to install its dependancies
- Don't forget to make sure the Docker daemon is running before testing the image

## My Approach

- This project outlines two specific files that are required as part of the image composition, `Dockerfile` and `docker-compose.yml` (note the .yml extension, a data serialisation language for our instructions)
- I have set up the project's microservice deps and left blank files for the Docker configuration for the initial commit
- The next step is to push the developed branches to dev and get to work on the docker configuration
- After completing the base working configuration for the Docker config, the next step is to document the configuration as proof of concept

### Dockerfile

The cloned app only requires a compatible Node.JS runtime version to install its dependancies and run the server index. Its container would require:

- A runtime image
- A specified working directory (makes for better organisation/management)
- Runtime command

### Docker Composition

The Dockerfile defines the single container image, but to compose this effectively, we need to describe how it should behave in a multi-container context, i.e., how new containers should be created, destroyed, etc.

- Define the calculator as its own docker service
- Configure the working directory and port config, define basic restart policy and build type (prod)
- Now the service can be mounted to its respective container directory and issued a run command

### Summary

- Cloned app
- Defined docker image, including app deps and runtime config
- Defined composition behaviour in service context