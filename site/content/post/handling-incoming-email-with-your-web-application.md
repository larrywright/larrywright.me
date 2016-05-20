+++
title = "Handling Incoming Email With Your Web Application"
date = "2011-01-07T12:00:00-00:00"
draft = false
+++

This morning I was looking for a way to handle incoming email in a web
application (similar to the way Highrise and Evernote let you email
things to a special email address and have them put into their system).
There are a number of ways to do this via procmail, or by using
something to connect to your mail server using POP or IMAP and reading
emails, but I was looking for a way to do this without having to host my
own email infrastructure. Ideally, I want something like
[Twilio](http://twilio.com), that will receive the email and then do an
HTTP POST to the endpoint of my choosing.

Here's what I found.

### [CloudMailIn](http://cloudmailin.com/)

Still in beta (and free while it is), this looks robust. It's also
available as a [Heroku addon](http://addons.heroku.com), if that's how
you roll.

(A tip of the hat to [@peterc](http://twitter.com/peterc) for pointing
me to this one)

### [APInbox](http://www.apinbox.com/)

Looks similar to CloudMailIn, though not in beta. There's a free plan
for up to 100 emails a day, and then it goes up from there. Their site
was down when I first went to it this morning, which makes me a tad
nervous, but that may well be an isolated thing.

### SendGrid

SendGrid is a heavy hitter in the email space, mostly doing outbound
delivery. They do however have a Parse API that seems to perform the
same function as the other two services. I'm not sure on the pricing
here, their basic plan is \$9.95 per month for 10,000 emails, but I'm
not sure if that includes incoming or not. UPDATE: I heard from
SendGrid. Their plans cover both incoming and outgoing, so for the in
the case of the \$9.95 plan, it could be a mix of both, up to 10,000

(thanks to Twilio's [@johnsheehan](http://twitter.com/johnsheehan) for
the pointer to SendGrid)

I haven't used any of these yet, so I can't make an endorsement of one
over the other, but I thought I'd post it here in case anyone else is
looking for this kind of provider. If you have experience with any of
these, please comment with your opinion.

