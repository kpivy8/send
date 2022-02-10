##
# Firefox Send - Mozilla

FROM node:12.22.10-alpine3.14

USER root
WORKDIR /app
COPY --chown=root:root . ./

RUN mkdir -p /app/.config/configstore && ln -s dist/version.json version.json

ENV PORT=1443

EXPOSE ${PORT}

CMD ["node", "server/bin/prod.js"]
