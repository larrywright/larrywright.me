+++
title = "Markaby Is Beauty"
date = "2006-07-18T03:00:00-00:00"
draft = true
categories = ["Ruby"]
+++

I've been developing a little blog app lately, more as an exercise than
anything else (though it will likely end up powering this site, as I've
grown very tired of Typo). I'm trying out a couple of things with this
application though, namely [Test Driven
Development](http://en.wikipedia.org/wiki/Test_driven_development) and
[Markaby](http://redhanded.hobix.com/inspect/markabyForRails.html). I'm
going to write something on doing TDD with Rails in the near future, but
for now I wanted to talk quickly about Markaby. Markaby is an
alternative to [ERB](http://www.ruby-doc.org/stdlib/libdoc/erb/rdoc/),
which is the default page markup language for Rails. Markaby does away
with the angle brackets, and lets you use straight Ruby as your
templating system.

Here's a sample page in Markaby:

<pre>
html do\
 head do\
 title action\_name\
 stylesheet\_link\_tag 'scaffold'\
 end

body do\
 p flash\[:notice\], :style =&gt; "color: green"\
 self &lt;&lt; @content\_for\_layout\
 end\
 end

</pre>
I wasn't sure whether I'd like Markaby or not, but after writing some
code, I'm enjoying it. The code is very clean since everything is in
Ruby. You don't have that somewhat unnatural mixture of Ruby and HTML
that you get with ERB. I also find it much easier to read.

All in all, this seems to fit much better with Rails than ERB. The only
downside is that in working with a designer, there would be a barrier.
For a solo developer, however, it's great.

