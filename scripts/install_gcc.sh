gcc_version=8.4.0
wget https://ftp.gnu.org/gnu/gcc/gcc-${gcc_version}/gcc-${gcc_version}.tar.gz
wget https://ftp.gnu.org/gnu/gcc/gcc-${gcc_version}/gcc-${gcc_version}.tar.gz.sig
wget https://ftp.gnu.org/gnu/gnu-keyring.gpg
signature_invalid=`gpg --verify --no-default-keyring --keyring ./gnu-keyring.gpg gcc-${gcc_version}.tar.gz.sig`
if [ $signature_invalid ]; then echo "Invalid signature" ; exit 1 ; fi
tar -xvzf gcc-${gcc_version}.tar.gz
cd gcc-${gcc_version}
./contrib/download_prerequisites
cd ..
mkdir gcc-${gcc_version}-build
cd gcc-${gcc_version}-build
$PWD/../gcc-${gcc_version}/configure --prefix=$HOME/Applications/gcc/${gcc_version} --disable-multilib --enable-languages=c,c++
make -j2
make install
