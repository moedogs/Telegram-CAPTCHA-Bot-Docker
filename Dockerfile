FROM python:3.7.3-stretch

MAINTAINER Kobayashi Tooruchan <tooruchan@protonmail.com>
RUN ASYNC_LINK='https://github.com/pyrogram/pyrogram/archive/asyncio.zip' \
    && pip3 install --no-cache-dir -U $ASYNC_LINK \
    && pip3 install --no-cache-dir tgcrypto \
    && mkdir /usr/src/captcha

WORKDIR /usr/src/captcha/

COPY ./src /usr/src/captcha

CMD ["python","./main.py"]

