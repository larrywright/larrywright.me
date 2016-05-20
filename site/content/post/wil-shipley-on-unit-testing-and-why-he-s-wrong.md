+++
title = "Wil Shipley on Unit Testing (and Why He's Wrong)"
date = "2005-09-24T03:00:00-00:00"
draft = false
+++

Wil Shipley is the author of several well known Mac applications,
notably
[OmniGraffle](http://www.omnigroup.com/applications/omnigraffle/) and
[Delicious Library](http://www.delicious-monster.com/) , and has a
well-read [blog](http://wilshipley.com/blog/). In a post
[here](http://wilshipley.com/blog/2005/09/unit-testing-is-teh-suck-urr.html)
he asserts that "Unit testing is teh suck".

Although Wil is a [bright
guy](http://www.drunkenblog.com/drunkenblog-archives/000581.html) and
very likely a better programmer than I will ever be, this is completely
out of touch with reality. I suspect anyone that has done
[TDD](http://en.wikipedia.org/wiki/Test_driven_development), or even
used a unit testing tool would agree with me.

Wil starts off with this statement:

<blockquote>
I've NEVER, EVER seen a structured test program that (a) didn't take
like 100 man-hours of setup time, (b) didn't suck down a ton of
engineering resources, and © actually found any particularly relevant
bugs. </blockquote>

Well, I think Wil may be exaggerating a bit with the 100 hours nonsense,
but let's assume he's not for just a second. I've never written a single
line of ObjectiveC code, but if
[OCUnit](http://developer.apple.com/tools/unittest.html) is anything
like the other unit testing tools out there (NUnit, JUnit, Test::Unit),
this is a ridiculous statement. As for not finding relevant bugs, I find
it unlikely as well.

Next up is this statement:

<blockquote>
It's actually provably impossible to test your program with every
conceivable type of input programmatically, but if you test by hand you
can change the input in ways that you, the programmer, know might be
prone to error. </blockquote> Sorry, wrong answer. Anything you can do
manually can (and should) be automated. Two reasons:

-   Manual tests aren't reproducible. Duh.
-   Manual tests take a **lot** of time to do. Because they're manual.
    Double-duh. Furthermore, things that are time consuming are often
    skipped when people get tired, lazy, or just need to get the thing
    out the door. And unless you wrote down all of those manual tests,
    if the person who wrote the code (and was doing the testing) leaves
    the company, you're in trouble.

Summary: **Unless you have a good set of unit tests, real regression
testing is nearly impossible.**

Next, Wil describes his testing methodology:

<blockquote>
When you modify your program, test it yourself. Your goal should be to
break it, NOT to verify your code. That is, you should turn your huge
intellect to "if I hated this code, how could I break it" as SOON as you
get a working build, and you should document all the ways you break it.
\[Sure, maybe you don't want to bother fixing the bug where if you enter
20,000 lines of text into the "item description" your program gets slow.
But you should test it, document that there is a problem, and then move
on.\] You KNOW that if you hated someone and it was your job to break
their program, you could find some way to do it. Do it to every change
you make. </blockquote>

There amount of time it would take to do this on a program of any size
is ridiculous. Although Wil may have the self-discipline to do this, the
rest of us likely don't. And again, it's not a repeatable process.

Here's the bottom line: Unit tests are important. Extremely important.
And they don't add time to a project, in fact in most cases they will
reduce it. At first blush this doesn't make much sense, but here's the
rationale:

-   You typically write this code anyway, but end up throwing it away.
    How often have you written some chunk of code, then written a piece
    of throwaway code to test it. Unit tests are all about taking that
    code and making it automatic.

<!-- -->

-   You're trading test-coding time for testing and debugging time. Yes,
    it takes time to write unit tests. But it also takes a lot of time
    (arguably more) to run a bunch of manual tests. It also takes time
    to debug problems found later on that could have been
    caught earlier.

Wil has forgotten one of the basic rules of software development: Catch
Bugs Early. If you catch a bug when you're just getting started, it
costs nearly nothing to fix. Find that same bug after you have released
it to the world, and it costs significantly more - particularly if
you're not talking about a web application.

On top of all of this, there are a couple of other points worth making
about Unit Tests:

-   Refactoring, or any type of major code change, is scary without good
    unit tests. Often, people avoid changing the code altogether and
    just live with it's warts. I can't find the post now, but one of the
    [37Signals](http://www.37Signals.com) guys blogged about how having
    unit tests made the architectural changes that were made to Basecamp
    a lot easier.

<!-- -->

-   When you have to integrate with other developers, unit tests
    are invaluable. This is particularly true when coupled with
    Continuous Integration.

<!-- -->

-   Unit tests (if done right) will improve the architecture of
    your code. You simply can't have a highly-coupled application if you
    are unit testing everything independently.

<!-- -->

-   Unit tests serve as documentation for how the code
    <em>actually</em> works. Forget that dusty API reference that hasn't
    been updated for three versions. A set of passing unit tests tells
    you what the code does right now. Paired with a code coverage tool,
    it can even tell you what's <em>not</em> documented.

Summary: Unit tests == Awesome, and represent all that is good in the
world. I certainly don't think that they're a panacea, but they're
certainly not "teh suck".

I didn't expect this to turn into such a rant, but when people who are
respected and admired in the community make harmful and incorrect
statements, they need to be corrected.

