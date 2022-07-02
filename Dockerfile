# docker build -t hatch .
FROM rust as build

WORKDIR /app

COPY src src
COPY Cargo.lock .
COPY Cargo.toml .

RUN cargo build --release

FROM debian:stable-slim

WORKDIR /app

COPY --from=build /app/target/release/hatch /app
COPY log4rs.yml .

CMD ["./hatch"]
