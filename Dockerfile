# Simple Dockerfile for the Node.js app
FROM node:18-slim

# Create app directory
WORKDIR /app

# Copy all file in our project
COPY package.json
package-lock.json .

# Install production dependencies only
RUN npm install

COPY ..

# starting our application
CMD ["node", "server.js"]

#exposing server port
EXPOSE 3000
