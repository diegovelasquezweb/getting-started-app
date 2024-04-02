# Use the latest Node.js image as base
FROM node:latest

# Set working directory inside the container
WORKDIR /app

# Copy package.json to the working directory
COPY package.json /app

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . /app

# Expose port 3000 for React development server
EXPOSE 3000

# Start the React app
CMD ["npm", "start"]