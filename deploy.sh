#!/bin/bash
file="site-`date +%Y%m%d%H`.tar.gz"
tar zcvf $file
scp $file deploy@beta.larrywright.me:/var/www/

