#Install exiftool
gzip -dc Image-ExifTool-9.78.tar.gz | tar -xf -
cd Image-ExifTool-9.78
perl Makefile.PL && make test && sudo make install

# Install PyExifTool
gzip -dc smarnach-pyexiftool-3db3764.tar.gz | tar -xf -
cd smarnach-pyexiftool-3db3764
sudo python setup.py install



