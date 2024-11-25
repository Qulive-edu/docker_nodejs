# Используем официальный Node.js образ
FROM node:16

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

# Копируем package.json и package-lock.json в контейнер
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем весь код в контейнер
COPY . .

# Открываем порт 3000 для приложения
EXPOSE 3000

# Команда для запуска приложения
CMD ["npm", "start"]
