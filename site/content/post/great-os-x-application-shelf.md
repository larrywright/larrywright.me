+++
title = "Cool OS X Application: Shelf"
date = "2008-05-29T09:00:00-00:00"
draft = false
+++

![](>http://approachingnormal.com/assets/2008/5/29/Shelf_1.jpg)\
One of the most useful ideas I've seen in the past few years was
[Dashboard](http://nat.org/dashboard/). Dashboard was an open source
project launched by Nat Friedman of Ximian (since acquired by Novell).
It's aim was to provide a "dashboard" of information relevant to you
while you were doing work. If you were having an IM conversation with
your friend Bob, it would show you the last few emails Bob had sent you,
previous IM conversations with Bob, Bob's contact information from your
address book, etc.

I had always thought that Dashboard was an intriguing concept, and one
of the few examples of real innovation on the desktop that I have seen
in a while. It was a bit dissapointing to see the project get sidelined,
but these things happen.

A project [emerged
recently](http://radar.oreilly.com/archives/2008/01/continuous-context-off-the-she.html)
for OS X that is based on the same concepts, although implemented
differently. It's called
[Shelf](http://jerakeen.org/blog/2008/01/shelf-context-for-macos/) and
is written by [Tom Insam](http://jerakeen.org) who is a developer at
[Dopplr](http://dopplr.com) (though all indications are that this is an
independent project and not supported or endorsed by Dopplr).

Shelf watches the applications you are using in OS X, and displays
relevent information from applications local to your computer as well as
web sites (like Dopplr, naturally). Here is Tom's own description from
the [Shelf website](http://jerakeen.org/code/shelf/):

> Shelf is an app for MacOS that looks at the current foreground
> application, and tries to figure out if what youâ€™re looking at
> corresponds to a person in your Address Book. Then itâ€™ll tell you
> things about them. ... Just run it. Itâ€™ll sit in the background, and
> watch the foreground application. If it can tie something youâ€™re
> looking at (the current url in your web browser, for instance, or the
> target of an open chat) to a person in your Address Book, itâ€™ll open
> a window and show you their name and picture, and itâ€™ll try to fetch
> RSS feeds for any URLs in their address card.

Although it's a newer project (only at version .13), Shelf seems to be
off to a promising start. It provides hooks into a number of different
applications on OS X already (according to the Shelf site):

-   Safari - looking at the foreground url, and for microformats in the
    source of the current page.
-   Firefox - looking at the foreground url.
-   Mail.app - From the email address of the sender of the currently
    selected email.
-   NetNewsWire - From the homepage url of the currently selected
    feed item.
-   Twitterrific - From the homepage or twitter page urls of the
    currently selected tweet.
-   Adium - From the IM username of the current conversation.
-   iChat - From the IM username of the current conversation.
-   Address Book - The currently selected person.

This is an idea whose time has come, I think. There are obviously some
gaps here, for example if you use GMail as your email application (as I
do), or Google Reader for RSS feeds. Integrating with all of these
applications is a tricky problem, but it's not insurmountable. I think
it's certainly worth solving though, as the benefits could be huge.

I hope this project doesn't fall by the wayside, as it has too much of a
potential impact on the way we work. It's possible that Apple will
implement something similar, it seems like the next logical progression
of Spotlight.

Are there any other tools like this out there?

