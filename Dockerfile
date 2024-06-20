# Stage 1: Build the application
FROM node:14 AS builder

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire application code
COPY . .


# Here I am using light base image
FROM node:14-alpine

WORKDIR /app

# Copying files from first stage
COPY --from=builder /app .

# Expose the application port
EXPOSE 3000

# Command to run the application
CMD ["node", "index.js"]
