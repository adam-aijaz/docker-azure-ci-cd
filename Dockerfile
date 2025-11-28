
FROM node:18-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --omit=dev
COPY app/. .
EXPOSE 8085
CMD ["npm", "start"]
