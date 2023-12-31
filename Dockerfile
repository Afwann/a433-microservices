FROM node:18-alpine as base
WORKDIR /src
COPY . .

FROM base as production
ENV NODE_ENV=production
RUN npm ci --only=production
COPY ./*.js ./
CMD ["node", "index.js"]

FROM base as development

ENV NODE_ENV=development
RUN npm install
COPY . .
CMD ["node", "index.js"]