
FROM node:18-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --omit=dev
# Put the contents under /app/app
COPY app/. ./app
EXPOSE 8085
CMD ["npm", "start"]  # still runs 'node app/server.js'
