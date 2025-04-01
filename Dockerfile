# Base image
FROM node:18

# Create app directory
WORKDIR /app

RUN apt-get update && apt-get install -y netcat-openbsd

# Copy dependencies
COPY package*.json .
RUN npm install

# Copy the rest of your code
COPY . .

RUN chmod +x wait-for-db.sh

# Build Prisma client
RUN npx prisma generate


# Expose backend port (change if you're not using 3000)
EXPOSE 3000

# Start app
CMD ["./wait-for-db.sh"]