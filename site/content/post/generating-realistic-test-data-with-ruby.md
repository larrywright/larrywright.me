+++
title = "Generating Realistic Test Data With Ruby"
date = "2009-06-09T20:00:00-00:00"
draft = false
categories = ["Ruby"]
+++

Generating semi-realistic test data for an application can be a pain. If
the data already exists, as in the case of an upgrade to an existing
system, you can generally create data based on the existing database.
But what if you need a large sample of data for a brand new system? If
you have simple data requirements, there are some Ruby gems that can
help you out. [Faker](http://faker.rubyforge.org/) is one such gem,
which lets you generate realistic names, addresses and phone numbers.
But what do you do for things that are a little less typical? Things
like scores, ratings, ages, dates, etc. I needed to do this recently for
a prototype I built of a system to generate letters. Here's the Rake
task I ended up with:

<script src="http://gist.github.com/126989.js">
</script>
This script adds 1000 records to my database that are representative of
what real production data would look like. The quantity of data is
obviously easily adjusted up or down as needed.

This is just a standard rake task that you can drop inside lib/tasks.
Most of this is fairly standard ruby code and not very interesting, but
lets look closer at what makes this work.

The first portion of the script does some setup work, deleting existing
data. Then it sets up a series of arrays for the values that will be
used for individual fields. For example the volumes variable:

<code>volumes = (8000..100000).to\_a</code>

This creates an array of integers containing every number between 8000
and 100000. Response rates and variances are set up similarly, as are
the client names.

In the loop that generates the actual data, we then call the
<code>rand()</code> function on these arrays to select a value from our
range. This function isn't a standard part of the Ruby Array class, it's
actually added to the class by
[ActiveSupport](http://api.rubyonrails.org/classes/ActiveSupport/CoreExtensions/Array/RandomAccess.html).

Using this method makes it very easy to generate test data within
predefined acceptable ranges.

For another take on this topic, see the [EdgeCase
blog](http://blog.edgecase.com/2009/3/30/seeding-your-development-database-with-faker-and-factory-girl)

