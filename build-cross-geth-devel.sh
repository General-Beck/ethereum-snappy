!#bin/sh
echo "1. Cloning go-ethereum git"
git clone https://github.com/ethereum/go-ethereum.git
echo "2. Switch to develop branch"
cd go-ethereum
git checkout develop
git pull
echo "3. Build binaries"
make clean
make geth-linux-386 geth-linux-amd64 geth-linux-arm-7
echo "4. Copy geth binaries to /geth-devel/bin/*/geth"
cd build/bin
mv -fv geth-linux-amd64 ../../../geth-devel/bin/x86_64-linux-gnu/geth
mv -fv geth-linux-arm-7 ../../../geth-devel/bin/arm-linux-gnueabihf/geth
mv -fv geth-linux-386 ../../../geth-devel/bin/i386-linux-gnu/geth
cd ../../../geth-devel
echo "5. Build gethd snappy"
snappy build
echo "6. Build complete!"
