+++
title = "Some Software Was Harmed in the Making of This Site"
date = "2009-01-08T23:00:00-00:00"
draft = false
categories = ["Meta"]
+++

As noted on the about page, I decided to write my own software to run
this site.

The following technologies were harmed in the making of this site:

### [Ubuntu Linux](http://ubuntulinux.org) on [VPSLink](http://vpslink.com)

VPSLink has good deals on VPS hosting. I pay \$24 per month for a 256mb
VPS, with impressive uptime. I originally intended to go with Slicehost,
but they had no slices available at the time (and didn't for several
months as I recall), but I have not been dissapointed with VPSLink.

### [Ruby on Rails](http://rubyonrails.org)

I haven't found a better platform for developing web applications yet,
although I'm keeping my eye on the up-and-coming web frameworks in Ruby,
Clojure, and Scala. With the merging of Merb into Rails 3, Ruby on Rails
looks to get even better.

### [MySQL](http://mysql.org)

Actually, I like PostgreSQL better, but I run a Wordpress site on my
server that needs MySQL so I'm using it for this site instead of running
two database servers. I actually tried deploying with SQLite originally,
but I ran into issues with it. It takes some doing to make MySQL run
well on a memory-constrained VPS, but it's possible (tip: don't use
InnoDB).

### [Blueprint CSS](http://blueprintcss.org)

Developing complex layouts that work cross-browser is painful. Blueprint
is a CSS framework that makes it less so. It's currently only used on
the administrative portion of the site, but I plan on reworking the main
layout with it as well. I'm also planning on playing with
[960gs](http://960.gs), which is similar (better, in the opinion of
some).

### [jQuery](http://jquery.com/)

JQuery is really, really good. I could go into all the reasons why, but
[Chris Wanstrath and PJ Hyatt already
did](http://errtheblog.com/posts/73-the-jskinny-on-jquery). I've used
Prototype for a number of years, and JQuery just seems to fit better.
There's a huge library of plugins available as well. The only downside
is the somewhat light documentation available for it, although that
seems to be changing.

### [Capistrano](http://capify.org)

Here's my rule for web application deployment: <strong>Automate the Very
First One</strong>. This really makes all the difference in the world,
especially for side projects like this. When deploying is trivial you
will do it <strong>all the time</strong>. As I was working to get this
new site out the door, I spent part of an afternoon at the local [coffee
shop](http://www.coffeehound.net/index.php?link=home) to fix the few
remaining issues with the code and get the server configured. In that
time, I deployed the site 6 times. My point: deployment has to be easy
or you won't do it. Capistrano makes it easy.

### [Phusion Passenger](http://www.modrails.com/)

I've always used Mongrel for hosting Rails apps but Passenger (aka
mod\_rails) is the new hotness in Rails hosting, and with good reason.
Once it is configured on your system, web deployments become very easy.
There's almost no setup, and you don't need all of the monitoring
infrastructure that mongrel requires. It runs under Apache, and as a
result uses somewhat more memory. This is certainly offset by the ease
of use and administration.

### [Ruby Enterprise Edition](http://www.rubyenterpriseedition.com/)

Provided by the same folks who brought you Passenger, REE reduces the
memory usage of your Rails application by roughly 30%. On a memory
constrained VPS such as mine, this is a huge deal. I was a little
concerned about running a different version of Ruby than the one I was
accustomed to, but lots of people are running REE these days, and to
date I have had no issues.

So that's the tech behind this site. As I add some additional
functionality here, I will be bringing in a few other things, and I will
write about it as I go.

### [Git](http://git-scm.org)

Git has a steeper learning curve than Subversion, but it's definitely
worth learning it. It's blazing fast, clean, and has some impressive
features, particularly around merging. For this project, I just used it
locally, without ever pushing to a server. I'd recommend using it even
when you're not collaborating with other developers.

<strong>So, what did you use to build your latest project?</strong>

