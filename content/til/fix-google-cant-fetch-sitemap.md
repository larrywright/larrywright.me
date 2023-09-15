+++
title = "How to Fix Google Not Being Able to Fetch sitemap.xml"
date = "2023-07-31T02:00:00-00:00"
draft = false
topics = ["Google"]
+++

I ran into an issue in Google's search/webmaster console. I submitted the sitemap url for a site and it gave me an error saying that it couldn't fetch it. I confirmed that the XML was valid and that the url was reachable, but still no luck. I also tried a number of suggestions I found online but they didn't help either. Then I found a suggestion deep in a comment thread somewhere that suggested trying a different url, like appending ?=1 to the end of the url. This worked, and the error immediately went away.

I have no idea why this worked, it looks like perhaps something is cached and adding the parameter to the end busts the cache. 