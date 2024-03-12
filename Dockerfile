# Use the official Node.js 18 image as base
FROM node:19.5.0-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the rest of the application code
COPY . .

# RUN npm run lint

# RUN npm test

# RUN npm run build

# Expose port 3000 (assuming your Next.js app runs on port 3000)
EXPOSE 5173

# Command to run the application
CMD ["npm", "run", "dev"]
