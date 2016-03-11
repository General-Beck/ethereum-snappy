!#bin/sh
wget https://github.com/ethereum/go-ethereum/releases/download/v1.3.5/geth-Linux64-20160303152500-1.3.5-34b622a.tar.bz2
tar -xf geth-Linux64-20160303152500-1.3.5-34b622a.tar.bz2
echo "copy geth x64 binary to /geth-devel/bin/x86_64-linux-gnu/geth"
mv geth ./geth-devel/bin/x86_64-linux-gnu/geth
rm -rf geth
rm -rf geth-Linux64-20160303152500-1.3.5-34b622a*
echo "clean current directory"
wget https://github.com/ethereum/go-ethereum/releases/download/v1.3.5/geth-ARM-20160303142304-1.3.5-34b622a.tar.bz2
tar -xf geth-ARM-20160303142304-1.3.5-34b622a.tar.bz2
echo "copy geth x64 binary to /geth-devel/bin/arm-linux-gnueabihf/geth"
mv geth ./geth-devel/bin/arm-linux-gnueabihf/geth
rm -rf geth
rm -rf geth-ARM-20160303142304-1.3.5-34b622a*
echo "clean current directory"
cd geth-devel
echo "build gethd snappy"
snappy build
echo "build complete"
