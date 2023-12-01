FROM node:18-alpine

WORKDIR /app

ARG NEXT_PUBLIC_CLOUDINARY_CLOUD_NAME="your_cloud_id"
ENV CLOUDINARY_CLOUD_NAME ${NEXT_PUBLIC_CLOUDINARY_CLOUD_NAME}

COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3053
CMD npm run start