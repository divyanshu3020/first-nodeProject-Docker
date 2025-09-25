# Use Alpine-based Node.js LTS
FROM node:20-alpine

# Add non-root user
RUN addgroup -S nodegroup && adduser -S nodeuser -G nodegroup

# Set production environment
ENV NODE_ENV=production
ENV PORT=9000

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy app files
COPY . .

# Set proper ownership
RUN chown -R nodeuser:nodegroup /app

# Switch to non-root user
USER nodeuser

# Health check
HEALTHCHECK --interval=30s --timeout=3s \
  CMD wget --no-verbose --tries=1 --spider http://localhost:9000/ || exit 1

EXPOSE 9000

CMD ["npm", "start"]