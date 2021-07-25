

yum install -y gcc gcc-c++ pcre-devel zlib-devel make unzip gd-devel perl-ExtUtils-Embed libxslt-devel openssl-devel perl-Test-Simple

yum groupinstall -y 'Development Tools'


cd /usr/src

wget https://www.openssl.org/source/openssl-1.1.1k.tar.gz

tar xvf openssl-1.1.1k.tar.gz

cp -r openssl-1.1.1k openssl

cd openssl

./config --prefix=/usr/local/openssl --openssldir=/usr/local/openssl --libdir=/lib64 shared zlib-dynamic

make -j4

make test

make install

mv /usr/bin/openssl /usr/bin/openssl-backup

ln -s /usr/local/openssl/bin/openssl /usr/bin/openssl

