+++
title = "Interview: Peter Cooper on Rails, Entrepreneurship, and Developing on Linux"
date = "2007-12-19T11:00:00-00:00"
draft = false
categories = ["Interviews"]
+++

<i>Note: This is the first in a series of interviews I will be doing
over the coming months.</i>

![](>/assets/peter-cooper-small2.jpg)

### Thanks for agreeing to do this interview. Can you tell us a little bit about yourself?

I'm Peter Cooper, a Ruby developer and author from the wild, barren
north of England. I'm probably best known in the Ruby community for
being the author of [Beginning
Ruby](http://www.amazon.com/gp/product/1590597664ie=UTF8&tag=approachingno-20&linkCode=xm2&camp=1789&creativeASIN=1590597664),
published by Apress, as well as the editor of [Ruby
Inside](http://rubyinside.com), the most popular Ruby related weblog.

### Your [website](http://petercooper.co.uk) lists you as a serial entrepreneur. Do you consider yourself a developer who happens to be an entrepreneur, or is it the other way around?

It tends to vary year by year! I'll go through periods where I'll happen
to be developing more for other people, and others when I focus on my
own projects. Having made a successful exit with two businesses in 2007,
however, I've been leaning towards doing more for myself. I'm likely to
drop the "enterpreneur" stick soon though, as it tends to be that I
merely follow my nose and the business side of it just falls into place
by itself. I'm more of a curious bumbler by nature.

### When did you first discover Ruby on Rails?

Rails first came onto my radar in October 2004. It was reasonably
primitive then but will still appealing. As such a nascent technology
based on a relatively unheard-of language, I was more interested in
poaching the ideas for my favorite language of the time, Perl, and began
developing my own equivalent. I developed a whole application on my
framework, but it was shaky and I decided to give Rails a try, while
promising not to get too bothered about learning Ruby itself.

My first Rails application was for a client and I developed a whole
photography site for them in perhaps a quarter of the time it would have
taken me with Perl. At that point I was hooked, and I also began to
venture into the Ruby on Rails IRC channel on irc.freenode.net which, at
the time, was great fun.

### What was it about Rails that appealed to you?

The biggest selling points were the abstraction and the speed / ease of
development. I pride simplicity and economy above all, so developing Web
applications in Rails was an eye opener compared to the clumsiness of
Perl (I mean, take a look at mod\_perl sometime!).

### What does your development toolset look like? (editor, browser, etc)

Up till now, my development environment has been under OS X. I've stuck
with MySQL for a database engine throughout, merely because I know it so
well by now. Firefox was my browser of choice on OS X until Leopard, but
now I mostly use Safari as it's come on in leaps and bounds. I use
Textmate as my primary editor, although I don't know how to use any of
the macro / snippet features.. it's really just a text editor with
syntax coloring and a file list down the side for me. I like to keep
things really simple with little to remember.

At the deployment end of the chain, I use Linux, nearly always Red Hat
Enterprise or CentOS.

### You recently announced (on Twitter) that you were switching to Linux for development work, while using OS X for everything else. Can you explain what led to that switch?

As with most Ruby and Rails developers, my applications all end up
deployed on Linux machines. While open source technologies make it easy
to jump between different flavors of UNIX, something about OS X's
"everything for everyone" approach irks me when it comes to doing
development work. It'd be like taking my city car on the track or
putting a race car on the streets.. you can do it, but it feels better
to have separate cars for different situations. While I don't find Linux
particularly useful for graphics work and general day to day use, it
feels like a more natural operating system for developing on at the
command line level. With the minimalist dwm window manager, you can even
get all of the GUI control at keyboard level, meaning you can focus on
work rather than moving pretty windows about.

I'm also attracted by the ability to run a single X11 server in my
house, then be able to access the same development environment from
different machines around the house without needing to sync up. OS X can
be used as an X client quite easily, so I can be developing in the same
environment anywhere and on any machine. I'm still in the process of
setting all of this up though and working out the pros and cons for day
to day use.

### Do you have any must-have libraries or tools for Ruby?

I don't tend to have many libraries or tools installed. I'm a big fan of
the command line clients for things like MySQL, Subversion, and Git, and
I don't run my IRB with any elaborations. The only gems I tend to
install are Rails, Mongrel, Daemons, Hpricot, and RMagick, although
installing OS X Leopard has updated this somewhat. Mongrel and Daemons
are my "favorite" gems. Mongrel because it makes building super-fast
HTTP daemons so easy, and Daemons because it means I can forget all of
the dull process involved in daemonizing and controlling applications
and services I build.

### You recently stated (also on Twitter, I believe) that JRuby was going to be a big growth area in the next few years. Can you explain why you feel that way?

There's no escaping the fact that big businesses move slowly. Their
technology departments can be frighteningly conservative and there's
often only one "approved" way to do things. This is especially true of
deployment. Even medium sized companies freak out when you talk about
installing Linux and putting your own Ruby / Rails stack on top. They
need everything documented, centralized, and consistent. As such, the
Java platform has become a real bedrock for servers and application
deployment in the enterprise, and JRuby gives us the opportunity to
target all of those established enterprise ecosystems by making Rails
applications easy to deploy on JBoss, Tomcat, and other Java application
servers.

JRuby is definitely the key to getting Ruby and Rails applications
deployed inside most major companies whose ecosystems have no time for
alternatives just yet. JRuby is definitely the direction you should be
heading for these sorts of deployments, and I think this area is going
to become significant to most profit-driven Rails developers very soon.

&lt;a
href="http://www.amazon.com/gp/product/1590597664?ie=UTF8&tag=approachingno-20&linkCode=xm2&camp=1789&creativeASIN=1590597664"&gt;<img src="/assets/9781590597668.gif" style="float:left; padding-right:16px;"/></a>

### You wrote a book on Ruby (which I [recently reviewed](http://larrywright.me/blog/articles/180-book-review-beginning-ruby-from-novice-to-professional)). What books on Ruby/Rails do you recommend, aside from your own of course :)

My book is for people who either have a reasonable understanding of
programming, even if they're not that good at it, or people who have
experience with languages other than Ruby and want to move across. For
people with absolutely zero programming experience I'd recommend Chris
Pine's [Learn to
Program.](http://www.amazon.com/gp/product/0976694042?ie=UTF8&tag=approachingno-20&linkCode=xm2&camp=1789&creativeASIN=0976694042)
For already experienced Ruby developers who want to become real hotshots
and delve into the deeper mechanics of the language, I'd recommend Hal
Fulton's [The Ruby
Way.](http://www.amazon.com/gp/product/0672328844?ie=UTF8&tag=approachingno-20&linkCode=xm2&camp=1789&creativeASIN=0672328844)
Both of these books cover totally different ground than [Beginning
Ruby](http://www.amazon.com/gp/product/1590597664?ie=UTF8&tag=approachingno-20&linkCode=xm2&camp=1789&creativeASIN=1590597664)
and even complement it, depending on your skill level.

### Most programmers have a list of programming languages they want to learn. What is the next programming language you are hoping to learn?

I'm an opportunist developer who tries to use the right tool for the job
in order to quickly capitalize on some untapped market or niche. As
such, I don't tend to learn languages for fun, at least not to a deep
level. I've taken a look at languages like Erlang, Haskell, Io, and even
written a little Lisp, but don't see any immediate reasons to learn
these languages to a professional level. It's certainly worth
understanding their paradigms and styles, however, to take something
useful back to your more productive environments. Lisp has certainly
given me a big appreciation for a lot of oblique programming techniques.

### You've sold two of your sites this past year. Were those opportunistic sales, or was this something you had planned to do all along?

Opportunistic sales. In the first case, with Code Snippets, I was
approached by a friend who was interested in buying the site, but after
checking with my network of contacts it turned out Rick Ross of DZone
was also interested and the site made a great fit with DZone, the "Digg
for developers" as I call it.

### Now that you've sold these sites, what's next for you?

Ay, there's the rub! Most of the projects I've had success with have
been tools or services that I've desperately wanted to use myself, so
I've had a lot of motivation to see them through. When you don't have
any nagging wants, however, you have to really dig deep to come up with
the ideas. I'm currently in a bit of a low gear, with it being the end
of the year, as well as having sold two businesses this year, but I hope
to get back on the saddle really soon and release some more projects
next year. For the meantime, however, I'm keeping Ruby Inside updated as
best I can and keeping my nose to the ground!

