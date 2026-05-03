# Stable Node version
FROM node:18-alpine

WORKDIR /app

# Copy only package files first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy rest of the code
COPY . .

# Expose app port
EXPOSE 8080

# Start app
CMD ["npm", "start"]
