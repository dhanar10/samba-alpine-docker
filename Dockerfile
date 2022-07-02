FROM alpine:3.15

RUN apk add --no-cache samba

COPY smb.conf /etc/samba/smb.conf

VOLUME /storage

EXPOSE 445/tcp

CMD ["smbd", "--foreground", "--no-process-group", "--debug-stdout"]
