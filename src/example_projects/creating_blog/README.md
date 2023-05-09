# Creating Blog

- [Creating Blog](#creating-blog)
  - [What I want](#what-i-want)
  - [Creating base App](#creating-base-app)
  - [Implementing gems](#implementing-gems)
    - [Adding `cssbundling-rails`](#adding-cssbundling-rails)
    - [Adding RSPEC](#adding-rspec)
    - [Adding `Redcarpet`](#adding-redcarpet)
    - [Rubocop and Brakeman](#rubocop-and-brakeman)
  - [Starting local server](#starting-local-server)
  - [Redcarpet test implementation](#redcarpet-test-implementation)
  - [Creating basic models](#creating-basic-models)
    - [Create user model](#create-user-model)
    - [Create post model](#create-post-model)
    - [Create comment model](#create-comment-model)
  - [Implementing concern to render markdown with LeVar lib](#implementing-concern-to-render-markdown-with-levar-lib)
  - [Setup env variables with YML](#setup-env-variables-with-yml)
  - [References](#references)

## What I want

- Rails app as my personal website with esbuild and postgresql
- Implement a blog
- Use RSpec for tests
- Be able to render my markdowns and create new posts
- Simple to deploy
- Usage of hotwire and stimulus
- Use bootstrap

## Creating base App

First step to create application base

```rb
rails new lucasbarretto.com -d postgresql -j esbuild -T
```

## Implementing gems

- [cssbundling-rails](https://github.com/rails/cssbundling-rails)
- [Rspec](https://rspec.info/documentation/)
- [Redcarpet](https://github.com/vmg/redcarpet)
- [Rubocop](https://docs.rubocop.org/rubocop/index.html) & [Brakeman](https://brakemanscanner.org/docs/)

### Adding `cssbundling-rails`

This gem will allow your project to have task to setup different css frameworks

```rb
bundle add cssbundling-rails
```

it generates the following tasks:

```̀mono
rails --tasks
...
bin/rails css:install:bootstrap              # Install Bootstrap
bin/rails css:install:bulma                  # Install Bulma
bin/rails css:install:postcss                # Install PostCSS
bin/rails css:install:sass                   # Install Sass
bin/rails css:install:shared                 # Install shared elements for all bundlers
bin/rails css:install:tailwind               # Install Tailwind
...
```

In this project I want use bootstrap, so I will run:

```rb
rails css:install:bootstrap
```

### Adding RSPEC

```rb
#in Gemfile group :development, :test add 
 gem "rspec-rails"

#in command line
bundle
rails generate rspec:install
```

### Adding `Redcarpet`

Redcarpet I will use to be able to create .md posts that will be parsed and
render as views on my rails app

```rb
#in Gemfile without group  add
  gem "redcarpet", "~> 3.6"
  
#in command line
bundle
```

### Rubocop and Brakeman

Rubocop I will use to set code format standards and Brakeman to check
vulnerabilities such as SQL injection and etc..

```rb
#in Gemfile group :development, :test add 
  gem "rubocop", require: false
  gem "rubocop-minitest", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false

  gem "brakeman", ">= 4.0", require: false

# I have Added .rubocop.yml for specific standards from rubocop

#in command line
bundle
bundle exec rubocop -A
```

## Starting local server

```rb
./bin/dev
```

Using this command line we are going use built in foreman from rails 7

## Redcarpet test implementation

At first to test redcarpet I have created a simple class as a lib to render
the mds, later perhaps i will make it a concern to allow every blog post to
be renderer as md

```rb
# frozen_string_literal: true

class LeVar
  def self.render_rainbow(text)
    options = {
      filter_html: true,
      hard_wrap: true,
      link_attributes: { rel: "nofollow", target: "_blank" },
      space_after_headers: true,
      fenced_code_blocks: true
    }

    extensions = {
      autolink: true,
      superscript: true,
      disable_indented_code_blocks: true
    }

    renderer = ::Redcarpet::Render::HTML.new(options)
    markdown = ::Redcarpet::Markdown.new(renderer, extensions)
    markdown.render(text).html_safe
  end
end
```

## Creating basic models

### Create user model

```rb
rails g model user name:string surname:string email:string password_digest:string role:integer
```

**Class implementation:**

```rb
class User < ApplicationRecord
  has_secure_password

  has_many :posts
  has_many :comments

  enum role: [:standard, :admin]

  validates :name, :surname, :email, presence: true
  validates_uniqueness_of :email, case_sensitive: false
end
```

### Create post model

```rb
 rails g model post user:belongs_to title:string content:text
```

**Class implementation:**

```rb
class Post < ApplicationRecord
  include Renderable

  belongs_to :user

  has_many :comments, dependent: :destroy

  validates :user, :title, :content, presence: true
end
```

### Create comment model

```rb
rails g model comment user:belongs_to post:belongs_to content:text
```

**Class implementation:**

```rb
class Comment < ApplicationRecord
  include Renderable

  belongs_to :user
  belongs_to :post

  validates :post, :content, presence: true
end
```

## Implementing concern to render markdown with LeVar lib

```rb
module Renderable
  extend ActiveSupport::Concern

  included do
    def render
      LeVar.render_rainbow(content)
    end
  end
end
```

## Setup env variables with YML

## References

<https://dev.to/stripe/rendering-markdown-with-markdoc-in-rails-3bp0>

<https://www.netlify.com/>

<https://medium.com/@king.sabri/how-to-rendering-markdown-with-redcarpet-in-rails-eb6e3aba0a7b>

<https://bloggie.io/@kinopyo/rails-render-markdown-views-and-partials>

<https://web-crunch.com/posts/how-to-add-markdown-support-to-ruby-on-rails>

<https://medium.com/@cipeinado/how-to-build-a-new-rails-app-with-rspec-postgresql-and-git-1d33c7e60456>
