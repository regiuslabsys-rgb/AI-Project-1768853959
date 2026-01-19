FROM nginx:alpine

# Удаляем стандартный конфиг nginx
RUN rm /etc/nginx/conf.d/default.conf

# Копируем кастомный конфиг (если он есть, иначе будет использован index.html по умолчанию)
COPY nginx.conf /etc/nginx/conf.d/

# Копируем index.html в директорию для веб-контента
COPY index.html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]