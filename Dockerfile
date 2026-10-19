# 육각 전장 웹 서버 (게임 페이지 + 멀티플레이 중계)
FROM node:20-alpine
WORKDIR /app
COPY . .
RUN npm install --no-audit --no-fund && npm run build
ENV PORT=8080
EXPOSE 8080
CMD ["node", "apps/server/server.mjs"]
