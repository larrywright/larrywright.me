+++
title = "How to Make Sortable Tables in Textile"
date = "2006-08-30T02:00:00-00:00"
draft = false
+++

One of my favorite organizational tools is
[Instiki](http://www.instiki.org). I use it for note-taking, maintaining
reference information, and keeping lists. I have several lists that I
keep in tables, and the other day I had need to make them sortable.
Here's how I did it.

The first thing you need is Stuart Langridge's
[sorttable](http://kryogenix.org/code/browser/sorttable/) Javascript
library. This is a library that allows you to make any table sortable,
just by giving it a class of "sortable", and a unique ID. It's smart
enough to figure out how to sort most kinds of data, so it will sort a
date column as a date, and a number column as a number. Very cool piece
of code. Anyway, take this Javascript file and put it in the the
`public/javascripts` directory for your Instiki installation.

Next, start editing the page with the table that you want to make
sortable. At the top add the following declaration:

     

Next we'll modify the table. Usually tables in Textile look something
like this:

     |ID|Name| |1|Joe Smith| |2|Susie Jones| |3|Bob Barker| 

We need to add a table declaration and associated modifier in order to
give it a CSS class of sortable, and a unique ID:

     table(sortable#mytable) |ID|Name| |1|Joe Smith| |2|Susie Jones| |3|Bob Barker| 

The class name has to be "sortable", but the ID (the part after the \#)
can be anything you want as long as it's unique.

Save your changes, and you should now be able to sort by any column in
your table.

