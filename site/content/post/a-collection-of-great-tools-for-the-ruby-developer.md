+++
title = "A Collection of Great Tools for the Ruby Developer"
date = "2009-04-20T20:00:00-00:00"
draft = false
categories = ["Ruby"]
+++

I've been a bit heads-down lately, working on a super-secret project in
Ruby. More on that in the near future, but in the meantime I wanted to
share about a few things that I've started using.

### Shoulda

When I started my new project, I wanted to try one of the new testing
frameworks for Ruby. The problem is there are a number to choose from.
What to do...

I settled on [Shoulda](http://www.thoughtbot.com/projects/shoulda/). I
wish I could tell you that this was a rigorous process, that I evaluated
each framework carefully, learning about each one's strengths and
weaknesses. I did not, I cheated. You see, a while back, Josh Susser did
just that thing. He called it the [The Great Test Framework
Dance-off](http://blog.hasmanythrough.com/2008/6/1/the-great-test-framework-dance-off).
He settled on Shoulda, so that's what I went with.

Shoulda is developed by Tammer Saleh of ThoughtBot, who have a number of
other [really nice projects](http://www.thoughtbot.com/projects).
Shoulda's tagline is "Making Tests Easy on the Fingers and Eyes", and it
lives up to that goal. It has a very nice syntax for developing tests,
including a complete set of macros for testing controllers and models.
It's a joy to use. Here's what it looks like (both samples taken from
the [Shoulda README](http://github.com/thoughtbot/shoulda/tree/master) :

<script src="http://gist.github.com/98899.js">
</script>
Nice, right?

Here's a sample of the ActiveRecord macros in action:

<script src="http://gist.github.com/98901.js">
</script>
Beautiful.

So what's the big deal? Well, it's easier to read for one. Instead of
horrendous method names like test\_should\_do\_this\_but\_not\_that, you
get to write English: should "do this but not that". The macros in
Shoulda also let you test your models and controllers easily.

### Pivotal Tracker

Pivotal Tracker is an Agile project management tool, developed by the
folks at [Pivotal Labs](http://pivotallabs.com). It lets you create
projects, track release, stories, and defects. The beauty of Tracker is
it's all-on-one-screen user interface. It lets you see everything at a
glance, and even provides keyboard shortcuts for common tasks. I'm not
alone in my admiration of Tracker, it seems to be extremely popular
among the Rails consulting shops ([Hashrocket](http://hashrocket.com),
for one).

While Tracker is powerful enough to be used for large multi-developer
projects, it also happens to be **perfect** for managing your side
projects. Enter the features you want, organize them into releases, and
just click start to begin the first one. Click finish when you're done,
and move on to the next one. Easy peasy. Did I mention it's free?

Be sure to check out the
[screencast](https://www.pivotaltracker.com/learnmore), which gives a
nice overview of the application.

### HTTParty

John Nunemaker is a prolific Ruby and Rails developer, as witnessed by a
quick glance at his [Github page](http://github.com/jnunemaker/). One of
his most recent projects is HTTParty, which makes it dead-simple to
consume REST apis using Ruby. Here's what it looks like:

<script src="http://gist.github.com/93344.js">
</script>
HTTParty automatically detects whether the response is JSON or XML and
parses it appropriately. It really doesn't get much easier than that.
There's also a nice command-line app bundled with the gem that lets you
call RESTful web services easily from the command-line, with a few more
bells and whistles than curl.

### Sinatra

Sinatra is a great, compact web framework similar in concept to Why the
Lucky Stiff's Camping framework. It makes it trivial to create a web
application in just a few lines of code. It was originally written by
XXX to allow for creating lightweight web services, but has since become
quite popular as a web framework to use when Rails might be overkill.

<script src="http://gist.github.com/93347.js">
</script>
It's easy to create simple test applications for libraries, but also
robust enough to create full-blown websites with. Check out the [Sinatra
website](http://www.sinatrarb.com) and the [Sinatra
book](http://www.sinatrarb.com/book.html) for more details.

What tools have **you** discovered lately?

