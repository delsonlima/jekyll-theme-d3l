# jekyll-theme-dml

Welcome to jekyll-theme-dml!

jekyll-theme-dml is a simple dark theme based on [minima](https://github.com/jekyll/minima) with easy multilingual setup

## Installation

### GitHub Pages

Add this line to your Jekyll site's `_config.yml`:

```yaml
remote_theme: delsonlima/jekyll-theme-dml
```

### Gem

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-dml"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-dml
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-theme-dml

## Usage

### Layouts

Currently the following layouts are available: *authors*, *blog*, *default*, *feed*, *home*, *lang_blog*, *lang_chooser*, *page*, *post* and *projects*:

  - `authors` &mdash; automatically generates a list of site's authors using data from `_data/authors.yml`
  - `default` &mdash; default layout used for every other layouts
  Use this if you want to create a new custom layout placing it inside `_layouts` on your site's root directory
  - `feed` &mdash; create a feed with posts in the same language
  - `lang_chooser` &mdash; generates a page with all languages available and a link for each one
  - `page` &mdash; the pages of your site
  - `post` &mdash; the posts of your site
  - `projects` &mdash; automatically generates a list of your projects using data from `_data/projects.yml`

The layouts *blog*, *home* and *lang_blog* are almost alike, with a few differences between them:

  - `blog`: use this anywhere you want to place your post list. e.g: `https://yourdomain/blog`
  - `home`: this layout is the same as *blog*. If you want to show your post list at home page you may want to use it
  - `lang_blog`: use this if you want to show only the posts on page language

### Multilingual

jekyll-theme-dml was designed to be multi multilingual!
You can specify a language on every page. All you have to do is include a `lang` key on its front matter:

```yaml
---
layout: post
title: post_title
lang: en
---
```

The best way to organize your multi multilingual site is setting subfolders for every language. And also inside `_posts`.
For example, a site with two languages: *english* and *portuguese*, should be as follows:

```
.
├── en
├── pt
├── _posts
|   └── en
|   └── pt
```

Where folders `en` and `pt` contains the pages in each language.
Example:

```
.
├── en
|   └── about.md
├── pt
|   └── about.md
```

Here there is a page called about on each folder.
Where `https://example.com/en/about.html` will be the page in english, and `https://example.com/pt/about.html` will be the page in portuguese.
You can also choose a localized name to your pages by change its filename:

```
.
├── en
|   └── about.md
├── pt
|   └── sobre.md
```

Then address will be `https://example.com/pt/sobre.html`

### Choosing Defaults

You can choose a default language (and everything else) for every path on your site. So you don't have to add `lang` key to every page or post.
It can be done by adding a `defaults` key to your `_config.yml`:

```yaml
defaults:
  - scope:
      path: "en"
    value:
      lang: "en"
  - scope:
      path: "pt"
    value:
      lang: "pt"
  - scope:
      path: "_posts/en"
    value:
      lang: "en"
  - scope:
      path: "_posts/pt"
    value:
      lang: "pt"
```

For more info see [Jekyll docs](https://jekylllrb.com/docs/configuration/#front-matter-defaults)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/delsonlima/jekyll-theme-dml.
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
