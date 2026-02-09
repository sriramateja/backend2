# Use Node.js 18 (recommended)
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy dependency files first
COPY package*.json ./

# Install only production dependencies
RUN npm install --production

# Copy all backend source code
COPY . .

# Expose the port your app uses
EXPOSE 5000

# Start the backend
CMD ["node", "server.js"]
