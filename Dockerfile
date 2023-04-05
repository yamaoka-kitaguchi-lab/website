# Download hugo 
FROM klakegg/hugo:0.52 AS hugo

# Download theme
FROM debian:bullseye-slim AS theme
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git ca-certificates 

WORKDIR /theme
RUN git clone --depth 1 https://github.com/yamaoka-kitaguchi-lab/hugo-room308-bootstrap-theme .

# In remote 
FROM gcr.io/distroless/static-debian11 AS remote

COPY --from=hugo /bin/hugo /bin/hugo
WORKDIR /ws/themes/hugo-room308-bootstrap-theme
COPY --from=theme /theme/ .

# In local 
FROM debian:bullseye-slim AS local

COPY --from=hugo /bin/hugo /bin/hugo
WORKDIR /ws/themes/hugo-room308-bootstrap-theme
COPY --from=theme /theme/ .
