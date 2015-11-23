!#bin/sh
wget https://github.com/ethereum/go-ethereum/releases/download/v1.3.1/geth-Linux64-20151103111754-1.3.1-e553215.tar.bz2
tar -xf geth-Linux64-20151103111754-1.3.1-e553215.tar.bz2
echo "copy geth x64 binary to /geth-devel/bin/x86_64-linux-gnu/geth"
mv geth ./geth-devel/bin/x86_64-linux-gnu/geth
rm -rf geth
rm -rf geth-Linux64-20151103111754-1.3.1-e553215.tar.bz2
echo "clean current directory"
wget https://github.com/ethereum/go-ethereum/releases/download/v1.3.1/geth-ARM-20151103104644-1.3.1-e553215.tar.bz2
tar -xf geth-ARM-20151103104644-1.3.1-e553215.tar.bz2
echo "copy geth x64 binary to /geth-devel/bin/arm-linux-gnueabihf/geth"
mv geth ./geth-devel/bin/arm-linux-gnueabihf/geth
rm -rf geth
rm -rf geth-ARM-20151103104644-1.3.1-e553215.tar.bz2
echo "clean current directory"
cd geth-devel
echo "build gethd snappy"
snappy build
echo "build complete"
