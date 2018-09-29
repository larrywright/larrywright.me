+++
title = "Partitioning Databases in PostgreSQL"
date = "2006-08-30T01:00:00-00:00"
draft = false
categories = ["Postgresql"]
+++

I recently came across a [presentation](preso) given on migrating a very
large database (as in, tables with 1.8 billion rows) from Oracle to
PostgreSQL. It describes some of the issues they had along the way,
including having to move from Linux to OpenSolaris due to stability
issues.

One of the more interesting challenges they had to solve was the lack of
support for partitioning in PostgreSQL. Oracle allows you to partition
tables, so for example if you had a large table, you can cluster the
data into various segments - dates in their case. The reason for doing
this is to allow you to put less frequently accessed data on cheaper
storage (say, SATA instead of SCSI).

The solution in this case was to use PostgreSQL's support for table
inheritance (implementation details in the presentation). This allowed
them to easily add and delete new partitions. Database archiving is
always a hassle, and it also seems like this might make that easier as
well.

I've never used inheritence in PostgreSQL, so I don't know what kind of
overhead it adds, but no performance issues were noted in the
presentation. Regardless, this seems like a very interesting solution to
a pretty common problem.

[preso]http://www.lethargy.org/\~jesus/archive%20s/66-Big-Bad-PostgreSQL.html

