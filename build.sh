# Build script for Cloudflare Pages

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
export PATH="$PATH:$HOME/.cargo/bin"
cargo install
cargo install wasm-pack
wasm-pack build --target no-modules
mkdir frontends/web/pkg
cp pkg/website.js frontends/web/pkg
cp pkg/website_bg.wasm frontends/web/pkg