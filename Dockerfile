# Node image
FROM node:16

# Set up working dir
WORKDIR /app

# Copy package json files for services
COPY /api/package*.json /app/

# Install packages and build application
RUN npm install \
  && ci --only=production

# Copy source files
COPY /api/ . ./

# Expose ports
EXPOSE 3333

# Start application
CMD ["node", "api.js"]
