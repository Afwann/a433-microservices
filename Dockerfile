FROM node:18-alpine as base
WORKDIR /src
COPY . .

FROM base as production
ENV NODE_ENV=production
RUN npm ci --only=production
COPY ./*.js ./
CMD ["node", "index.js"]

FROM base as development
RUN apk add --no-cache bash
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh
ENV NODE_ENV=development
ENV NODE_ENV=development
RUN npm install
COPY . .
CMD ["node", "index.js"]