FROM node:latest
WORKDIR /app

# Copy only package.json and package-lock.json
COPY package*.json ./


RUN npm install

# Copy the rest of the application code
COPY . .

# Build the app
RUN npm run build

EXPOSE 3000

CMD["npm", "run",  "start"]
