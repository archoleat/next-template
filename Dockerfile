FROM node:lts-alpine AS base

COPY --from=oven/bun:1.4.4-alpine /usr/local/bin/bun /usr/local/bin/bun

WORKDIR /usr/src/app

FROM base AS deps

COPY package.json bun.lock* ./
COPY patches ./patches

RUN bun install --frozen-lockfile

FROM base AS builder

COPY --from=deps /usr/src/app/node_modules ./node_modules
COPY . .

ENV NEXT_TELEMETRY_DISABLED=1

RUN node specs/dependency-security.mjs

RUN bun run build

FROM base AS runner

WORKDIR /usr/src/app

ENV NEXT_TELEMETRY_DISABLED=1

USER node

COPY --from=builder /usr/src/app/.next/standalone ./
COPY --from=builder /usr/src/app/.next/static ./.next/static
COPY --from=builder /usr/src/app/public ./public

EXPOSE 3000

CMD ["node", "server.js"]
