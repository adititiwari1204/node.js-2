FROM node:18-slim

# Set environment for production
ENV NODE_ENV=production

# Create app directory
WORKDIR /usr/src/app

# Copy package manifests first to leverage Docker layer caching
COPY ./src/package.json ./app/

# Install production dependencies (use npm ci for reproducible builds)
RUN npm istall

# Copy app source
COPY . .

# Expose app port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
