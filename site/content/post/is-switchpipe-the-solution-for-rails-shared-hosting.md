+++
title = "Is SwitchPipe the Solution for Rails Shared Hosting?"
date = "2008-02-02T01:00:00-00:00"
draft = false
+++

[Peter Cooper](http://petercooper.co.uk) (who I [interviewed
recently](http://approachingnormal.com/2007/12/19/interview-peter-cooper-on-rails-and-entrepeneurship)
) has just announced [SwitchPipe](http://www.switchpipe.org), which aims
to make deploying and hosting Rails (and other frameworks, such as
Django) applications easy. From the site:

<blockquote>
Introduction / Overview\
 SwitchPipe is a proof of concept "Web application server" developed in
Ruby. More accurately, it's a Web application process manager and
request dispatcher / proxy. Backend HTTP-speaking applications (Web
applications) do not run directly within SwitchPipe, but are loaded into
their own processes making SwitchPipe language and framework agnostic.\
 SwitchPipe takes control of, and manages, the backend application
processes, including loading and proxying to multiple instances of each
application in a round-robin style configuration. As an administrator,
you can define the maximum number of backend processes to run for each
app, along with other settings so that you do not exceeded preferred
resource limits. SwitchPipe quickly removes processes that "break" or
otherwise outlive their welcome. For example, you can let SwitchPipe
kill any backend processes that have not been accessed for, say, 20
seconds. This makes hosting many multiple Rails applications, for
example, a quick and non-memory demanding process, ideal for shared
hosting environments.\
 ...\
 SwitchPipe's goal is to be:

\* super easy to configure\
 \* the easiest way to deploy multiple HTTP-talking backend
applications\
 \* painless in terms of management; no hand-holding of different
applications is needed\
 \* a permanent daemon that can handle configuration changes in backend
apps "on the fly"\
 \* a reliable solution on Linux and OS/X (and anything POSIX
compatible, ideally)

</blockquote>
I haven't spent much time with SwitchPipe yet, but if it lives up to
Peter's claims this will dramatically simplify hosting
Rails/Django/Camping/whatever applications.\
 What's interesting to note is that this originated with Peter's [widely
read
article](http://www.rubyinside.com/no-true-mod_ruby-is-damaging-rubys-viability-on-the-web-693.html)
on why such a thing was needed. Unlike a lot of other people who have
complained loudly about the state of Rails on shared hosting
environments, Peter put his time and talents towards creating a solution
which he then released <strong>within 3 weeks.</strong> This is
definitely something we need more of.\
 So what are your thoughts? Is this the solution we've been waiting for?

