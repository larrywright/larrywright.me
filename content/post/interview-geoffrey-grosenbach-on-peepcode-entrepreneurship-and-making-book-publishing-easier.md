+++
title = "Interview: Geoffrey Grosenbach on PeepCode, Entrepreneurship, and Making Book Publishing Easier"
date = "2008-01-02T16:00:00-00:00"
draft = false
categories = ["Interviews"]
+++

<i>This article is the second in a series of interviews that I will be
conducting over the next few months. For the other interviews, please
[visit the
archives](http://larrywright.me/blog/categories/interviews</i>)

<img src="/assets/geoffrey_1.jpg" style="float:left; margin-right: 10px; border: 5px solid #ccc;"/>

### Thanks for agreeing to do this interview. Can you start by telling everyone a little bit about yourself?

I live in Seattle, home of the world's [most pretentious Ruby
brigade](http://www.zenspider.com/seattle.rb). I've been doing
professional development for almost 10 years.

### Do you consider yourself a developer who happens to be an entrepreneur, or is it the other way around?

Definitely a developer first. I love solving problems and reading about
other people's approaches to software development. However, I've worked
for many startups and it was probably inevitable that I would eventually
ask the question "Could I run a business of my own?"

I had wanted to start my own business since high school but didn't
pursue it until recently. In 2002, I wrote a shareware RSS reader and
started selling it for \$15 online. [Cory
Doctorow](http://craphound.com/) even bought a copy and gave me some
feedback, which I unfortunately never implemented.

I only sold a couple hundred copies, but it was a good lesson in
developing a product, getting feedback, and advertising. One lesson I
should have learned is that there are no overnight successes. Even a
good idea often needs 6 months or a year of development and promotion to
get off the ground. Unfortunately, I promoted the RSS reader for only a
few months and then let it slowly die.

I also started an online [todo list](http://theonlineceo.com) that has
accidentally resulted in almost 10,000 signups. I haven't figured out
what to do with it yet, but it taught me a lot about deploying Rails
applications.

### When did you first discover Ruby on Rails?

I started working with it in January, 2005. There weren't any books, so
I started by reading the entire online documentation, method by method.
Everything just seemed to fit together and I loved the way that common
web development tasks were wrapped up into simple methods.

I still recommend reading through the entire API documentation. It's the
most thorough source available.

### What was it about Rails that appealed to you?

At first, I appreciated the high-level completeness of the API. Most of
the common things that a web developer would need to do were all there,
from database relationship definition to form building. While reading
through the documentation, I kept thinking "Yes...I could use that
feature!" or "That's so useful...why didn't I think of that?" I had
built my own MVC framework in Perl, but it was a chore to keep it
consistent and bug-free. With Rails, I found a framework that was
already capable and was also being constantly improved.

Currently, I appreciate the inventiveness of the Ruby community. Most of
the software I rely on day to day isn't part of the Rails framework at
all. I use [Haml](http://haml.hamptoncatlin.com/) templates exclusively
(I hate having to type all those angle brackets and end tags!), Haml's
Sass templates for my CSS, and
[make\_resourceful](http://mr.hamptoncatlin.com/) whenever I need a REST
controller.

I received a copy of the Django book earlier this month (which was very
well written), but I cringe at the thought of doing web development
without Haml. I'll probably need to write a few demo projects just to
become familiar with it.

### What does your development toolset look like? (editor, browser, etc)

<img src="http://farm2.static.flickr.com/1220/1433310081_9b12affad8.jpg" style="float:right; margin-left: 10px; border: 5px solid #ccc;"/>

I have a pretty standard Rails setup with a Mac, TextMate, FireFox with
the web developer and FireBug plugins. For everyday browsing, I find
Camino to be a bit faster.

I use the [tcsh](http://dotfiles.org/~topfunky/) and the standard Apple
terminal. [MailPlane](http://mailplaneapp.com/) for email, though I'm
probably going to switch back to [mutt](http://www.mutt.org/) now that
Gmail offers IMAP. I try to reduce distractions, so I run with a solid
black desktop picture and the
[MenuShade](http://www.nullriver.com/index/products) utility to hide the
menubar. Sometimes I also use [Spirited
Away](http://drikin.com/spiritedaway/) to hide background applications.

I've got a great desk from [Anthro
Cart](http://anthro.com/ppage.aspx?pmid=18) that can be used sitting
down or standing up. Plus, there are attachments for all my audio gear,
speakers, etc. A comfortable keyboard from
[TypeMatrix](http://typematrix.com/) and the [Freedom
chair](http://www.humanscale.com/products/freedom_index.cfm).

### Do you have any must-have libraries or tools for Ruby?

[autotest](http://nubyonrails.com/articles/autotest-rails) and
[rstakeout](http://nubyonrails.com/articles/automation-with-rstakeout)
for running tests or other commands automatically. In addition to the
Rails plugins mentioned above, I use
[memcached](http://www.danga.com/memcached/) and
[acts\_as\_state\_machine](http://elitists.textdriven.com/svn/plugins/acts_as_state_machine/)
in most of my web applications. The
[Hodel](http://nubyonrails.com/articles/a-hodel-3000-compliant-logger-for-the-rest-of-us)
logger is a must for viewing the real-world performance of a web
application.

I've been experimenting with dtrace and hope to learn how to use it.

### You started PeepCode several years ago. What drove you to do that?

I had wanted to do something with teaching and digital distribution. I
read many books and they are often out of date by the time they hit the
shelf. I saw how popular the original 10-minute Rails blog screencast
was and I also noticed that many other people were doing screencasts.
However, they often had distracting quirks, such as being shot
fullscreen and delivered at gigantic resolutions. So I figured that I
could do a really polished screencast that would be more informative
than many books and cover timely topics. It started with one and has
turned into a full time business not only for me, but also for a few
other authors who are writing PDF books.

### The PeepCode screencasts are very high quality. What tools do you use to put them together?

I'm currently using Final Cut Pro for editing and
[iShowU](http://www.shinywhitebox.com/home/home.html) for screen
capture. I also use
[OmniGraffle](http://www.omnigroup.com/applications/omnigraffle/) for
diagrams and other utilities such as
[XScope](http://iconfactory.com/software/xscope) and
[OmniDazzle](http://www.omnigroup.com/applications/omnidazzle/).\
In fact, I'm working on a screencast right now that shows how I create a
screencast.

### How long does it take to create one screencast?

Technically, it only takes about a week to film, dub, edit, and release.
But often, I'll do a few weeks of research about a new topic, or I'll
re-film a screencast after receiving feedback. For the
[git](http://peepcode.com/products/git) screencast, I created an entire
hour-long screencast and then started again from scratch after receiving
technical feedback from Junio Hamano, the maintainer of git.

### Peepcode originally started as screencasts, but recently you've started branching out into publishing. What drove you to do that?

The information that developers need is increasingly time sensitive. I
don't scale very well as a single author, so I was looking for ways to
work with other authors to produce relevant content on topics that
developers want to learn about. PDFs are a great way to do that, and are
even preferred by developers because of the ability to search the text
or copy and paste code snippets.\
A printed book usually takes 9 months or more to write, and authors
often end up exhausted, discouraged, and poorly compensated.

So I built a system that works with standard Textile-formatted text. So
far, authors have responded very favorably and it has even made
translation very easy. I have a half-dozen authors working on some great
topics that will be released over the next few months.

There are many important topics that aren't very well documented. I want
to make those topics accessible to developers at an affordable price.

### Originally, PeepCode focused solely on Rails, but with the latest screencast on the Git SCM, you seem to be branching out a bit. Was this a one-time occurance, or will we be seeing more screencasts like this?

Rails developers have supported my business from the beginning, so I'll
definitely continue to publish Rails-related content.\
But I hope to branch out into other topics, especially where it's of
interest to the Rails community as well as the greater web development
community. The [Prototype.js
Javascript](http://peepcode.com/products/javascript-with-prototypejs)
screencasts were quite popular but didn't require knowledge of Ruby
code. I'm hoping to do a series on CSS that will be useful to
developers, no matter what framework they are using.

### Your website says you are no longer doing consulting work, does that mean you are doing PeepCode full time?

I've been fortunate to have been working on PeepCode full-time since
May, 2007. It was a big decision to make, but it has definitely been the
right decision. Overall business has more than doubled since then and
I've been able to collaborate with many intelligent developers.

### The other thing you are well known for is the Ruby on Rails Podcast. You have been doing that for some time now, but I seem to recall that you weren't the original host of that podcast. How did you come to be the voice of Ruby on Rails?

Scott Barron started it, thanks to encouragement from David Heinemeier
Hansson. I contributed a few shaky interviews starting in July of 2005
and have done almost all of the subsequent 60+ shows.

I just bought a ticket to San Francisco for the sole purpose of
interviewing Rails startups for the podcast. It will be right around the
time of the MacWorld expo, and I hope to post the first interview almost
as soon as it is recorded.

### You seem to have a lot of irons in the fire, is there anything coming that you can talk about?

Right now it's all PeepCode! There will be a book on ActiveMerchant that
I'm excited to see published this spring. I also have an idea for a
series that will compare Rails to other popular web frameworks.

