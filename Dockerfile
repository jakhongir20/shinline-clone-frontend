# Use the official Node.js 18 image as base
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

RUN npm run lint

RUN npm test

RUN npm run build

# Expose port 3000 (assuming your Next.js app runs on port 3000)
EXPOSE 3000

# Command to run the application
CMD ["npm", "run", "start", "test", "build", "lint", "dev"]
