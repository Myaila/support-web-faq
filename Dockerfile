FROM node:20-alpine

RUN npm install -g docsify-cli@latest

WORKDIR /app

COPY docs/ ./docs/

EXPOSE 3000

CMD ["docsify", "serve", "docs", "--port", "3000"]
