FROM oven/bun:latest
WORKDIR /app

COPY package.json tsconfig.json bun.lock ./
COPY src/ ./src/

RUN bun install

USER bun
EXPOSE 80
ENTRYPOINT [ "bun", "start" ]
