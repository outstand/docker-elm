FROM outstand/yarn:latest as yarn

FROM node:lts-alpine
LABEL maintainer="Ryan Schlesinger <ryan@outstand.com>"

COPY --from=yarn /bin/yarn /bin/
RUN yarn global add elm@0.19.0-bugfix2

ENTRYPOINT ["elm"]
