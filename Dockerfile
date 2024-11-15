# Sử dụng Node.js image làm base image
FROM node:18

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép package.json và package-lock.json vào container
COPY package*.json ./

# Cài đặt các dependencies (bao gồm mintlify CLI)
RUN npm install -g mintlify

# Sao chép toàn bộ mã nguồn vào trong container
COPY . .

# Mở cổng 3000 cho container
EXPOSE 3000

# Lệnh để chạy Mintlify trong chế độ dev
CMD ["mintlify", "dev"]
