+++
title = "Backing Up Your Data With Fog"
date = "2011-06-14T12:00:00-00:00"
draft = false
+++

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js">
</script>
<link href="/stylesheets/jquery.snippet.min.css" media="screen" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="/javascripts/jquery.snippet.min.js">
</script>
<script type="text/javascript">
\$(document).ready(function(){\
 \$("pre").snippet("ruby",{style:"pablo"});\
});

</script>
[Fog](http://fog.io), in case you haven't heard of it, is a fantastic
cloud computing library written in Ruby. It provides a unified interface
to several popular cloud computing platforms(including Amazon,
Rackspace, Linode, and others), making it easy to interact with them
from Ruby. It currently supports four types of cloud services: storage,
compute, DNS, and CDN. Fog has become very popular lately, and serves as
the backbone for Chef's cloud computing functionality, which is how I
first became aware of it.

I recently used Fog to write a backup script in Ruby to automatically
send encrypted database backups from a database server running at
Rackspace to Amazon's S3 storage service. Here's how I did it.

### Overview

My script runs as the second step in a process. The first step is a
shell script that calls pg\_dump to dump a PostgreSQL database and then
encrypts the file using GnuPG, dropping them in a backup directory on
the database server.

My Fog-based script's job is to make sure that all of the files in the
backup directory get moved to S3.

### Writing Files

Fogsync (my script), looks at all of the files in that directory and
makes sure that they all exist in a bucket on S3. If they don't, it
copies them up there. Additionally, it deletes old backups from S3. For
this customer, we keep backups for 14 days, so all backups older than
that get deleted.

Let's look at how it works:

```
     fog = Fog::Storage.new(
                               :provider => 'AWS',
                               :aws_access_key_id => MY_ACCESS_KEY,
                               :aws_secret_access_key => MY_SECRET
                             )
     directory =  fog.directories.get("MY_DIRECTORY")


     files = Dir["/var/backup/*.gpg"]
      for file in files do
        name = File.basename(file)
        unless directory.files.head(name)
          directory.files.create(:key => name, :body => open(file))
        end
      end
```

Here's what this snippet does:

1. Creates a connection to AWS. The syntax is basically the same for
connecting to all of the cloud platforms, just the parameter names are
changed.

2. Uses 'head' to check if the file exists and, optionally, get some
metadata about it (size, modify date, etc). Think of this as the cloud
equivalent to the unix stat command. You don't want to use the 'get'
command, as that will return the whole file, which would take a very
long time if the files are large **cough\*voice of experience\*cough**.

3. Creates the file in the given directory ("bucket" in S3 terms) if it
doesn't exist already.

If you've used S3, you'll notice that Fog uses slightly different terms
for things than S3 does. Because Fog works across a number of different
storage providers, it uses more general terms. While this might be
confusing at first if you're familiar with a specific provider's
nomenclature, but the tradeoff is that if you want to move from one
provider to another, the only thing you have to change is the code that
sets up the connection (the call to Fog::Storage.new() in this example).

### Deleting files
```
      oldest = Date.today - 14 (our date)
      directory =  fog.directories.get(MY_DIRECTORY)
      files = directory.files
      files.each do |f|
        file_date = Date.parse(f.last_modified.to_s)
        if file_date < oldest
          file.destroy
        end
      end
```

This is fairly straightforward as well. Get all the files in the
directory and check their age, deleting the ones that are older than we
want to keep.

So that, in a nutshell, is how to use Fog. This is a simplified example
of course, in my production code the parameters are all pulled from
configuration files, and the script emails a report of what it did, in
addition to having a lot more error handling.

If you do any scripting with cloud computing, you owe it to yourself to
check out [Fog](http://fog.io).

