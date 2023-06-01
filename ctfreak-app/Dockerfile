FROM cloudron/base:4.0.0@sha256:31b195ed0662bdb06a6e8a5ddbedb6f191ce92e8bee04c03fb02dd4e9d0286df
MAINTAINER Jean-Yves Pellé <hello@jyp.software>

RUN apt install ca-certificates -y \
    && apt install tzdata

RUN mkdir -p /app/code
WORKDIR /app/code

ARG VERSION=1.9.2
RUN curl -L https://ctfreak.com/download/release/${VERSION}/linux/amd64 -o /app/code/ctfreak \
    && chmod a+x /app/code/ctfreak

COPY start.sh /app/code/

CMD [ "/app/code/start.sh" ]

EXPOSE 6700
