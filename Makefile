toolchain:
	rustup target add x86_64-unknown-linux-musl
	brew install filosottile/musl-cross/musl-cross

release:
	cargo build --release --target x86_64-unknown-linux-musl
	cp ./target/x86_64-unknown-linux-musl/release/bootstrap .
	serverless deploy
