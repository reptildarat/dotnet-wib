FROM mcr.microsoft.com/dotnet/core/aspnet:3.1.5-alpine3.12

# warning! specific implemetation for us! change the time zone into WIB
RUN apk add --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Jakarta /etc/localtime && \
    echo "Asia/Jakarta" >  /etc/timezone

# install the libdgiplus
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk --update add libgdiplus

CMD []
