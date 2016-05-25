VERSION_PNGQUANT=2.7.0
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

curl -O https://codeload.github.com/pornel/pngquant/tar.gz/2.7.0
tar xzvf 2.7.0*
cd pngquant-2.7.0

# Build pngquant with statically linked libpng
./configure --prefix=${DIR}/../ --with-libpng=${DIR}/../vendor/linux/lambda/libpng --with-openmp=static && make && make install
