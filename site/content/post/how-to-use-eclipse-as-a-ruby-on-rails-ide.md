+++
title = "How to Use Eclipse as a Ruby on Rails IDE"
date = "2005-05-29T02:00:00-00:00"
draft = false
+++

**Update 11/23/2005**: Months later, this is still apparently a popular
topic, as it's one of the most viewed posts here. Time has passed
though, and there's a better option:
[RadRails](http://www.radrails.org). It's built on Eclipse, but includes
Rails-specific tooling, which the configuration discussed below does
not. It's well worth your time to check out.

<p>
In this short tutorial, I'm going to walk you through setting up a code
editing environment for Ruby on Rails using the Eclipse IDE. <p>
<strong>About Eclipse</strong><br/>
<a href="http://www.eclipse.org">Eclipse</a> isn't really an
<a href="http://en.wikipedia.org/wiki/IDE">IDE</a> in and of itself.
It's more like a platform to build IDE's on. It was developed by
<a href="http://www.IBM.com">IBM</a> and then released as an open source
project. The code is now owned by the Eclipse Foundation. IBM uses
Eclipse as the foundation for all of their development tools, such as
<a href="http://www-306.ibm.com/software/awdtools/developer/application/index.html" >Rational
Application Developer</a>, their J2EE development tool. There are a
variety of other companies and open source projects developing plugins
as well as full-blown IDE's using Eclipse. See the Eclipse website for
further information. </p> <p> <strong>Note: </strong>Eclipse is a pig
when it comes to memory and processor (mostly memory). If you don't have
a 1.5ghz+ machine with 1gb of ram, you may find using it a little
frustrating. I am using it on a machine with a 1.1ghz P4 and 512mb of
ram, and it does OK, but it's not what I would call quick. </p> <p>
<strong>What we're going to do</strong><br/> What we are going to do
here is install Eclipse (if you don't already have it), and then add two
plugins to it. The first plugin will add support for editing Ruby code.
The second will add support for HTML editing. Then we'll make some
configuration changes to make everything work nicely, and that will be
it. </p> <p> <strong>NOTE:</strong><em>This is not a tutorial on
Eclipse. I'm not planning on covering the ins and outs of Eclipse here,
there are plenty of other sites that offer that kind of information. If
you're interested in seeing a more in-depth tutorial on using Eclipse to
edit Ruby/Rails code, drop me a line at \[larry AT
approachingnormal.com\], and I'll consider developing one.</em> </p> <p>
<strong>Installing Eclipse</strong><br/> The first thing you need to do
is install Eclipse, if you don't have it already. Head over to
<a href="http://www.eclipse.org">http://www.eclipse.org</a>, then
download and install the latest version for your platform. Make sure to
pick a stable release and not one of the milestone releases. Once you
have it installed, start up Eclipse and go on to the next step. </p>

<p>
<strong>Adding some plugins</strong><br/> Once you are in Eclipse go to
Help ~~&gt; Software Updates~~&gt; Find and Install. This brings up a
wizard-style dialog. On the first screen, make sure that "Search for new
features to install" is selected, and click <strong>Next</strong>. The
next screen let's you add/edit update sites where eclipse will look for
additional functionality. We're going to add two sites here. First,
click on the "New Remote Site" button. When the New Update Site dialog
pops up, enter "Ruby" into the Name field, and
http://rubyeclipse.sf.net/updatesite in the URL field. Then click
<strong>OK</strong>. You will now see your Ruby entry in the list of
update sites. Click on the checkmark to the left of the entry to include
it in the list of sites to search. </p> <p> Now, click on the "New
Remote Site" button again. Fill in the values as before, this time using
"Web" as the Name, and http://pipestonegroup.com/eclipse/updates as the
URL. Click <strong>OK</strong> as before, and make sure you check the
checkbox to the left of the Web entry. When you're all done, click
<strong>Next</strong>. </p> <p> The next screen takes you to the Search
Results screen. This will give you a list of features you can install.
We're interested in two here. Select the checkboxes for the latest
version of "Ruby Development Tools" (currently 0.5), and
"net.sourceforge.phpeclipse" (currently 1.1.4). Click
<strong>Next</strong>. On the next screen you'll accept the licenses,
and click <strong>Next</strong> again. On the final page, you'll choose
the location to store the plugins. Select the default unless you have a
reason to do otherwise. I had to add a new site to store mine in my home
directory on Linux due to not having permissions to the default
location. On a Windows machine you should be fine with the default. Now
click <strong>Finish</strong> and confirm the dialogs that pop up. The
download process may take a little time depending on your internet
connection. </p> <p> <strong>Configuration</strong><br/> We need to let
Eclipse know what to do with rhtml files. By default, Eclipse will treat
it as a text file, which isn't what we want. In Eclipse, go to Window
~~&gt; Preferences. In the tree on the left, navigate to Workbench~~&gt;
File Associations. Now click the <strong>Add</strong> button at the top
of the dialog, next to the File Types list. Enter \*.rhtml in the dialog
that appears and click <strong>OK</strong>. Now select our new type in
the File Types list and then click the <strong>Add</strong> button at
the bottom of the screen next to the "Associated Editors" list. Choose
"HTML Editor" from the list that appears, and click <strong>OK</strong>.
Now close the Preferences screen. </p> <p> <strong>Almost
Done</strong><br/> Now that we have everything installed, let's try it
out. In Eclipse, select File ~~&gt; New~~&gt; Ruby Project. Enter a name
into the dialog that appears and click <strong>OK</strong>. You should
now see your project in the Navigator window on the left hand side of
the screen. Now right click on that project name and choose "Import".
I'm going to import a copy of
<a href="http://typo.leetsoft.com">Typo</a>, the excellent blog software
that runs this site. I happen to have this on my drive, if you don't
have a rails project, either create one real quick or download something
like Typo. When the Import dialog comes up, choose "File System" and
click <strong>Next</strong>. Choose the directory your source code is
sitting in. and then select it in the checkbox on the left like this:
&lt;img src="http://approachingnormal.com/images/share/import.png"
align="Middle" width="500" height="500" alt="Import screen" / &gt;<br/>
Now click <strong>Finish</strong>. Once the source is imported, you
should see be able to navigate through the project tree in the Navigator
window. If you click on ruby and rhtml files, you will see that they are
opened in their proper editors. </p> That's it. You now have an Eclipse
based environment for developing Rails code in. Here are a couple of
screenshots to demonstrate what it looks like:<br/>\

<a href="http://approachingnormal.com/images/share/rhtml_code.png" >Editing
an ERB File</a><br/> <br/>
<a href="http://approachingnormal.com/images/share/ruby_code.png" >Editing
Ruby code</a> <br/> <p> <strong>What's Missing</strong><br/> So what's
missing from this? Well, a couple of things: <ul> <li>Eclipse doesn't
really understand ERB files. It would be great if the Ruby plugin
understood them, as it would make the syntax highlighting much better.
It would also allow for code completion, etc.</li> <li>No documentation.
A real IDE needs to have the Rails documentation embedded and
searchable</li> <li>WEBRick integration. It would be nice to be able to
stop/start WEBRick from within the IDE.</li> </ul> Perhaps someone will
tackle this project, as it seems there's a good foundation already. </p>
<p> If you have questions or comments, I'd love to hear them. Leave me a
comment, or email me at \[larry AT approachingnormal.com\] </p>

