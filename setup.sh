# First install dependencies
apt-get install -y git make

#Install exiftool
MYWORKDIR=${PWD}
gzip -dc Image-ExifTool-9.78.tar.gz | tar -xf -
cd $MYWORKDIR/Image-ExifTool-9.78
perl Makefile.PL && make test && make install

cd $MYWORKDIR

# Install PyExifTool
git clone https://github.com/smarnach/pyexiftool.git
cd pyexiftool
git remote add shoyebi https://github.com/shoyebi/pyexiftool.git
git checkout -b resolving_eagain shoyebi/resolving_eagain
python setup.py install
