FROM rustlang/rust:nightly-slim

ADD ./ /thruster
WORKDIR /thruster

RUN cargo clean
RUN RUSTFLAGS="-C target-cpu=native" cargo build --release

CMD ./target/release/thruster-bin
