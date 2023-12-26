# Node JS port 14
FROM node:14 
# Menentukan Working Directory pada container di /app
WORKDIR /app 
# Menyalin seluruh source code ke working directory di container
COPY . .

# Berjalan pada production mode dan menggunakan item-db sebagai database host
ENV NODE_ENV=production 
ENV DB_HOST=item-db

# meng-Install semua dependency dan build
RUN npm install --production --unsafe && npm run build

# meng-Expose port 8080
EXPOSE 8080 

# Menjalankan perintah untuk menjalankan aplikasi
CMD [ "npm","start" ]