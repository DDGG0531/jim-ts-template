# 使用 Node.js 的官方映像
FROM node:22-alpine

# 設定工作目錄
WORKDIR /usr/src/app

# 複製 package.json 和 package-lock.json
COPY package*.json ./

# 安裝依賴
RUN npm install

# 複製應用程式代碼
COPY . .

# 開放應用程式埠
EXPOSE 3000

# 啟動應用程式
CMD ["npm", "run", "start"]