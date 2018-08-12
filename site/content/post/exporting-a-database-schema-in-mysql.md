+++
title = "Exporting a Database Schema in MySQL"
date = "2005-05-30T21:00:00-00:00"
draft = false
categories = ["Programming"]
+++

File this under "Useful things to remember".

The following bit of command line magic will export the schema of your
database. <br/> <p> <code> mysqldump --no-data --tables -u
YOUR\_USER\_NAME -p DATABASE\_YOU\_WANT\_SCRIPTED &gt;&gt; FILENAME.sql
</code> </p> <br/>

An example looks like this:

<code>\
 mysqldump --no-data --tables -u larry -p contacts &gt;&gt;
contacts.sql\
</code>\
If you want the data as well, omit the "--no-data" portion.

