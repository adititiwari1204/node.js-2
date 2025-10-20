# Simple Dockerfile for the Node.js app
FROM node:slim

# Create app directory
WORKDIR /app

# Copy all file in our project
COPY . .

# Install production dependencies only
RUN npm install

# starting our application
CMD ["node", "server.js"]

#exposing server port
EXPOSE 3000
