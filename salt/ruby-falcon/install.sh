#!/bin/bash

cd /usr/local/src/
tar xvfz ruby-1.9.3-p385.tar.gz
cd ruby-1.9.3-p385
cat ../p385...p385_falcon_gc.diff | patch -p1
./configure --prefix={{ pillar['ruby_location'] }}
make
make install
