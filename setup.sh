# First install dependencies
apt-get install -y git make

#Install exiftool
MYWORKDIR=${PWD}
gzip -dc Image-ExifTool-9.78.tar.gz | tar -xf -
cd $MYWORKDIR/Image-ExifTool-9.78
perl Makefile.PL && make test && make install

cd $MYWORKDIR

# Install PyExifTool
gzip -dc smarnach-pyexiftool-3db3764.tar.gz | tar -xf -
cd $MYWORKDIR/smarnach-pyexiftool-3db3764
python setup.py install
