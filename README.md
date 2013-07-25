# Canonicalifier

Canonicalifier is a Rails plugin that provides a simple way to utilize
[Canonical URL Standards][1] adopted by all of the major search engines to
improve recognition of duplicated URLs. This allows you to represent
information in several different places without harming your search engine
rank.

This gem is basically a repackaged version of the [canonical-url][2] gem to
make it work with Rails 4. The original gem appears to be no longer actively
maintained. The name of the gem has also been changed, mainly to make it
easier to refer to different versions in discussions and to make installation
easier.

## Installation

Add the following line to your `Gemfile`:

```
gem 'canonicalifier'
```


## Usage

The plugin is very simple to use and consists of a controller method and a
helper. To set a canonical URL you will first need to add it into your site's
layout, like so:

```erb
<html>
  <head>
    ...
    <%= canonical_link_tag %>
    ...
  </head>
  ...
</html>
```

This will automatically insert a canonical URL tag into every page of your
site, defaulting to the request's current URL (it will not output anything
when you have not specified a canonical URL through the controller or
explicitly through the link tag). Then you can set canonical URLs in the
controller as follows:

```ruby
class BlogController < ApplicationController
  def show
    @post = find_post # assume this is a standard blog post type record
    canonical_url blog_post_path(post.year, post.month, post.day, post.slug)
  end
end
```

Now no matter what the routing is that takes you to the post, the canonical
URL will remain the same.

## License

Parts of this gem that was taken from [canonical-url][2] are copyright © 2009
[Michael Bleigh](http://www.mbleigh.com/) and
[Intridea, Inc.](http://www.intridea.com/).

Everything else, copyright © 2013 [Ronny Haryanto](https://github.com/ronny).

See LICENSE for details.


## See Also

- [Specify Your Canonical][3] from Google Webmaster Central blog.

[1]: http://www.seomoz.org/blog/canonical-url-tag-the-most-important-advancement-in-seo-practices-since-sitemaps
[2]: https://github.com/mbleigh/canonical-url
[3]: http://googlewebmastercentral.blogspot.com.au/2009/02/specify-your-canonical.html
