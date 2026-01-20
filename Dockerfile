FROM node:18-alpine
WORKDIR /app
COPY . .
RUN apk add --no-cache python3 make g++ \
    && npm install --production \
    && npm rebuild sqlite3 --build-from-source
CMD ["node", "/app/src/index.js"]
