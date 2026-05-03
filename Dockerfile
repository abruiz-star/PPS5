FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN addgroup app && adduser -S -G app app
USER app
EXPOSE 3001
CMD ["npm","start"]
