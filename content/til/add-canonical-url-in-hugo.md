+++
title = "How to Add a Canonical URL in Hugo"
date = "2023-08-22T02:00:00-00:00"
draft = false
topics = ["Hugo"]
+++

I was getting errors about canonical URLs in the Google console( "Page is not indexed: Duplicate without user-selected canonical"). After a little digging, it seems the fix is to add a link in the `<head>` tag to specify the canonical URL. [This blog post](https://qameta.com/posts/define-canonical-url-in-a-hugo-theme/) shows how to accomplish this in [Hugo](https://gohugo.io/). The solution looks like this:

```html
<head>
    ...
    <link rel="canonical" href="{{ .Permalink }}">
</head>
```

