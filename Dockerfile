# syntax=docker/dockerfile:1

#FROM node:lts-alpine
FROM public.ecr.aws/docker/library/node:lts-alpine3.20
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000