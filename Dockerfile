
FROM debian:9.6-slim AS build
MAINTAINER sanjusss <sanjusss@qq.com>
WORKDIR /app
WORKDIR /download
RUN apt update && \
    apt install wget unzip -y  && \
    wget https://cdn.ipip.net/17mon/besttrace4linux.zip && \
    unzip -d /app ./besttrace4linux.zip 

FROM debian:9.6-slim AS final
MAINTAINER sanjusss <sanjusss@qq.com>
WORKDIR /app
COPY --from=build /app/besttrace .
RUN chmod +x /app/besttrace
RUN apt-get update && apt-get install -y wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["/app/besttrace"]