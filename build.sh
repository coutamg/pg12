#!/bin/bash
source ~/.bashrc
pgconf
opt=${1:-""}
if [ "$opt" = "build" ]; then
    passwd=changeme
    bear make -j4 2>&1 > /dev/null #&> build_res
    echo $passwd | sudo -S make install &> /dev/null
	#CFLAGS='-g -O0' CXXFLAGS='-g -O0' ./configure  --with-pgport=6666 --enable-debug 
fi

pg_ctl stop -D $PGDATA
rm -rf $PGDATA/log/pglog
pg_ctl start -D $PGDATA  -l $PGDATA/log/pglog
