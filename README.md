# Ruby Language Learning

- [Ruby Language Learning](#ruby-language-learning)
  - [Rails](#rails)
    - [Install Rails version](#install-rails-version)
    - [Creating new Rails App](#creating-new-rails-app)
      - [For older Rails versions](#for-older-rails-versions)
      - [Configured as API app](#configured-as-api-app)
      - [Configured with React libs (Rails 6 or above)](#configured-with-react-libs-rails-6-or-above)
      - [Configuring database representation](#configuring-database-representation)
        - [Moving from schema to structure](#moving-from-schema-to-structure)
    - [Generators](#generators)
      - [Models generator](#models-generator)
    - [Implementations and snippets quick access](#implementations-and-snippets-quick-access)
      - [Current class and ActiveSupport::CurrentAttributes implementation](#current-class-and-activesupportcurrentattributes-implementation)
        - [Basic Implementation](#basic-implementation)
        - [Create `current.rb` class](#create-currentrb-class)
        - [Create controller concern `set_current_attributes.rb` to load attributes](#create-controller-concern-set_current_attributesrb-to-load-attributes)
        - [Include concern to the `application_controller.rb`](#include-concern-to-the-application_controllerrb)
        - [Adding Current variables on Mailer previews](#adding-current-variables-on-mailer-previews)
          - [Basic implementation for mailer initializer `config/initializers/action_mailer.rb`](#basic-implementation-for-mailer-initializer-configinitializersaction_mailerrb)
      - [Allowing local fonts in assets pipeline and CORS](#allowing-local-fonts-in-assets-pipeline-and-cors)
        - [Adjusting `assets.rb` initializer to add fonts as part of pipeline](#adjusting-assetsrb-initializer-to-add-fonts-as-part-of-pipeline)
        - [Install gem `rack-cors`](#install-gem-rack-cors)
        - [Adding `Rack::Cors` as middleware initializer](#adding-rackcors-as-middleware-initializer)
        - [How to call fonts on `css.erb` or `html.erb`](#how-to-call-fonts-on-csserb-or-htmlerb)
          - [how to precompile assets to test locally](#how-to-precompile-assets-to-test-locally)
      - [Helpers](#helpers)
        - [ApplicationHelper](#applicationhelper)
      - [locale dynamic configs](#locale-dynamic-configs)
  - [Postgres](#postgres)
    - [Fixing PG Error for new rails apps](#fixing-pg-error-for-new-rails-apps)
  - [PUMA](#puma)
    - [Check PUMA PORTS](#check-puma-ports)
    - [Kill PUMA](#kill-puma)
  - [Redis](#redis)
    - [Check Redis status](#check-redis-status)
    - [Starting Redis with specific flags](#starting-redis-with-specific-flags)
    - [Restarting Redis](#restarting-redis)
  - [GraphQL](#graphql)
    - [Adding gem `graphiql-rails`](#adding-gem-graphiql-rails)
    - [`graphiql-rails` initial configuration](#graphiql-rails-initial-configuration)
    - [Mounting GraphQl engine to routes](#mounting-graphql-engine-to-routes)
    - [Generating ObjectTypes](#generating-objecttypes)
  - [RSPEC](#rspec)
    - [Installing Rspec](#installing-rspec)
  - [Webpack](#webpack)
    - [Run dev server](#run-dev-server)
  - [Webpacker](#webpacker)
    - [Add Webpacker with default configs](#add-webpacker-with-default-configs)
    - [Adding Stimulus (Webpacker 5 or below)](#adding-stimulus-webpacker-5-or-below)
    - [Rake tasks that allow checking Webpacker installation](#rake-tasks-that-allow-checking-webpacker-installation)
      - [To check available commands](#to-check-available-commands)
        - [Most important commands to check webpacker health](#most-important-commands-to-check-webpacker-health)
  - [Rubocop](#rubocop)
  - [Brakeman](#brakeman)
  - [Foreman](#foreman)
  - [React with in Rails project](#react-with-in-rails-project)
    - [Configuration](#configuration)
      - [Installing react into the project with webpacker](#installing-react-into-the-project-with-webpacker)
      - [Dealing with routes](#dealing-with-routes)
      - [Create js pack within the application](#create-js-pack-within-the-application)
      - [Update application layout or specific layout](#update-application-layout-or-specific-layout)
      - [Implement a component within a view folder](#implement-a-component-within-a-view-folder)
      - [Tree for pack folders folders views](#tree-for-pack-folders-folders-views)
      - [Import to the app pack an external component](#import-to-the-app-pack-an-external-component)
  - [MailCatcher](#mailcatcher)
  - [Gists](#gists)
    - [Private](#private)
    - [Public](#public)
  - [Error and fixes](#error-and-fixes)
    - [cannot load such file -- coffee_script](#cannot-load-such-file----coffee_script)
  - [References](#references)
  - [Rails Credentials](#rails-credentials)

## Rails

### Install Rails version

```shell
gem install rails -v 6.1.5
```

### Creating new Rails App

```shell
rails new my-app --database=postgresql
```

#### For older Rails versions

```shell
rails _5.2.7_ new my-flights-app --webpack=react --database=postgresql
```

#### Configured as API app

```shell
rails new my_api -d=postgresql -T --api
```

#### Configured with React libs (Rails 6 or above)

```shell
rails new my-app --webpack=react --database=postgresql
```

#### Configuring database representation

`schema.rb`

Basic database representation

- It is a Ruby representation of your database; schema.rb is created by inspecting the database and expressing its structure using Ruby.
- It is database-agnostic (i.e. whether you use SQLite, PostgreSQL, MySQL or any other database that Rails supports, the syntax and structure will remain largely the same)

`structure.sql`

Mature database representation

- It allows for an exact copy of the database structure. This is important when working with a team, as well as if you need to rapidly generate a new database in production from a rails db:setup task.
- It allows preserving information of advanced database features. For example, if you are using PostgreSQL, it enables the use of views, materialized views, functions, constraints and so on.

##### Moving from schema to structure

```rb
# config/application.rb

  class Application < Rails::Application
  # ...
    config.active_record.schema_format = :sql
  end
```

### Generators

To check available generators native and from dependecies

```shell
rails generate
```

OR

```shell
rails g
```

#### Models generator

```shell
rails g model Airline name:string image_url:string slug:string
```

Model with reference:

```shell
rails g model Review title:string description:string score:integer airline:belongs_to
```

### Implementations and snippets quick access

#### Current class and ActiveSupport::CurrentAttributes implementation

CurrentAttributes came out on Rails 5.2 allow us to control session variables, follow steps below

##### Basic Implementation

##### Create `current.rb` class

```rb
# frozen_string_literal: true

class Current < ActiveSupport::CurrentAttributes
  attribute :request_id, :user_agent, :ip_address, :user, :request, :clinic
end
```

##### Create controller concern `set_current_attributes.rb` to load attributes

```rb
# frozen_string_literal: true

module SetCurrentAttributes
  extend ActiveSupport::Concern

  included do
    before_action do
      Current.request_id = request.uuid
      Current.user_agent = request.user_agent
      Current.ip_address = request.ip
      Current.request = request
    end
  end
end

```

##### Include concern to the `application_controller.rb`

```rb
class ApplicationController < ActionController::Base 
  include SetCurrentAttributes
end

```

##### Adding Current variables on Mailer previews

Since mailer preview uses Rails classes and itself is required to add initializer configs to be able to set data coming from session request

###### Basic implementation for mailer initializer `config/initializers/action_mailer.rb`

```rb
# frozen_string_literal: true

Rails.application.reloader.to_prepare do
  class Rails::MailersController
    before_action :set_current_clinic

    private

    def set_current_clinic
      Current.clinic = Clinic.find_by(subdomain: request.subdomain)
    end
  end
end
```

#### Allowing local fonts in assets pipeline and CORS

##### Adjusting `assets.rb` initializer to add fonts as part of pipeline

```rb
# /\.(?:svg|eot|woff|ttf)$/ to allow fonts to be precompiled to enabled it to be referenced by asset_path after CORS is allowed

Rails.application.config.assets.precompile  += %w(/\.(?:svg|eot|woff|ttf)$/) 

Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
```

##### Install gem `rack-cors`

```gemfile
# Rails middleware
gem "rack-cors"
```

##### Adding `Rack::Cors` as middleware initializer

```rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '/assets/*', headers: :any, methods: [:get, :post, :patch, :put]
  end
end
```

##### How to call fonts on `css.erb` or `html.erb`

```css
  @font-face {
    font-family: 'ValueSansPro';
    src: url(<%= asset_path('ValueSansPro-Regular.ttf') %>) format('truetype'),
    url(<%= asset_path('ValueSansPro-Regular.woff') %>) format('woff'),
    url(<%= asset_path('ValueSansPro-Regular.woff2') %>) format('woff2');
    font-weight: 300;
    font-style: normal;
  }
```

###### how to precompile assets to test locally

```shell
rails assets:precompile
```

#### Helpers

##### ApplicationHelper

```rb
def dom_id_for_view(prefix: nil, suffix: nil)
  "id=#{[prefix || controller_name, suffix || action_name].compact.join("-")}"
end

def dom_class_for_view(options = {})
  default_class = "#{[options[:prefix] || controller_name, options[:suffix] || action_name].compact.join("-")}"
  "class=#{options[:class] || default_class }"
end
```

#### locale dynamic configs

Within the locale folder on the project it's possible to create an additional file to assist dynamic formatting for the class `I18n.t` and `I18n.l`

```rb
## config/locales/en.rb
{
  en: {
    date: {
      formats: {
        short_month_day_year: lambda { "%b, #{ _1.day.ordinalize} %Y" }
      }
    }
  }
}
```

## Postgres

### Fixing PG Error for new rails apps

An error occurred while installing pg (1.2.3), and Bundler cannot continue.

```shell
sudo apt install postgresql-contrib libpq-dev
```

## PUMA

### Check PUMA PORTS

```shell
sudo netstat -ntlp | grep LISTEN
```

### Kill PUMA

```shell
lsof -wni tcp:3000
```

## Redis

```shell
sudo add-apt-repository ppa:redislabs/redis
sudo apt-get update
sudo apt-get install redis
```

OR

```shell
sudo snap install redis
```

### Check Redis status

```shell
redis-cli ping
systemctl status redis
```

### Starting Redis with specific flags

```shell
redis-server --port 6380 --daemonize yes
```

### Restarting Redis

```shell
/etc/init.d/redis-server restart
```

## GraphQL

### Adding gem `graphiql-rails`

To add graphQL gem go to the Gemfile and add:

```Gemfile
group :development do
  ...

  gem 'graphiql-rails'
end

...

gem 'graphql', ' ~> 1.9.18'
```

then run the bundler

```shell
bundle install
```

### `graphiql-rails` initial configuration

As long as the gem is installed `graphiql-rails` will provide specfic generators configure your project to graphql

Run the generator unless you want to config your project manually

```shell
rails g graphql:install
```

### Mounting GraphQl engine to routes

Before you can test the GraphQL endpoint, you need to mount the GraphiQL engine to the routes file so you can access the GraphiQL in-browser IDE. To do this open the routes file located at `config/routes.rb`:

```rb
Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
  end

  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
```

### Generating ObjectTypes

```shell
rails generate graphql:object Note id:ID! title:String! body:String!
```

*Note that `!` means that field os required to the query*

## RSPEC

### Installing Rspec

```shell
gem install rspec
```

Adding to the project

Add on gem file and run bundle

```Gemfile
group :test do
  ...

  gem "rspec"
  gem "rspec-rails"
end
```

Generate Rspec required files

```shell
rails g rspec:install
```

## Webpack

Implementing webpack-cli and dev-server

```shell
yarn add webpack webpack-cli
yarn add -D @webpack-cli/serve webpack-dev-server
```

### Run dev server

```shell
./bin/webpack-dev-server
```

## Webpacker

Webpacker basically is a interface between a webpack project between a rails project, it was set as default to handle javascript files on Rails  however Rails seven moved for other stuff (Check importmaps, jsbuildings and esbuild)

### Add Webpacker with default configs

```shell
rails webpacker:install
```

### Adding Stimulus (Webpacker 5 or below)

```shell
rails webpacker:install:stimulus
```

### Rake tasks that allow checking Webpacker installation

#### To check available commands

```shell
rails webpacker
```

##### Most important commands to check webpacker health

| Command                 | Description                                     |
| :---------------------- | :---------------------------------------------- |
|webpacker:info           | Provides information on Webpacker's environment |
|webpacker:binstubs       | Installs Webpacker binstubs in this application |
|webpacker:verify_install | Verifies if Webpacker is installed              |
|webpacker:clean          | Remove old compiled webpacks                    |
|webpacker:clobber        | Removes the webpack compiled output directory   |

## Rubocop

```Gemfile
group :development do
  ...

  gem 'rubocop', require: false
  gem 'rubocop-minitest', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
end
```

```shell
bundle exec rubocop -a
```

To enforce corrections

```shell
bundle exec rubocop -A
```

Custom configs for rubocop

You can add custom rules for cops, for that be sure to create a `.rubocop.yml` file inside the project

Check the default configs below
[RuboCop’s default configuration](https://github.com/rubocop/rubocop/blob/master/config/default.yml)

## Brakeman

Brakeman: Is a free vulnerability scanner specifically designed for Ruby on Rails applications. It statically analyzes Rails application code to find security issues at any stage of development

```Gemfile
group :development do
  ...

  gem 'brakeman', '>= 4.0', require: false
end
```

```shell
bundle exec brakeman
```

## Foreman

Foreman is a tool that run all required services needed to run a project

Installing Foreman gem

```shell
gem install foreman
```

Create a manifest file called `Procfile` within the root of the project and define the required services you need to run as Foreman starts

```txt
web: bin/rails server -p 3000
js: yarn build --watch
css: bin/rails dartsass:watch
```

To start Foreman simple run the command

```shell
foreman start
```

## React with in Rails project

### Configuration

#### Installing react into the project with webpacker

```shell
rails webpacker:install:react
```

#### Dealing with routes

By doing this you allow the react app to handle it's own routes, since we only have a single rails controller to render o app due to the fact that it react operates all in frontend

```rb
# routes.rb

  get "/(/*in_app_path)", to: "my_flights_app#index"
```

```rb
# my_flights_app_controller.rb

class MyFlightsAppController < ApplicationController
  def index
    render html: nil, layout: true
  end
end
```

#### Create js pack within the application

```js
import React from 'react'
import ReactDOM from 'react-dom'

// Simple example component
const Hello = props => { <h1>Hello {name}</h1>}

Hello.defaultProps {
  name: 'Lucas'
}

// Required method to render components
document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Hello />,
    document.body.appendchild(document.createElement('div')))
})
```

#### Update application layout or specific layout

```erb
<!-- views/layouts/application.html.erb -->

<head>
  ...

  <%= javascript_pack_tag 'my_flights_app' %>
</head>
```

#### Implement a component within a view folder

```jsx
import React from 'react'

const Airlines = props => (
    <h1> My Flights App - version: {props.version}</h1>
)

Airlines.defaultProps = {
  version: 0.1
}

export default Airlines
```

#### Tree for pack folders folders views

```tree
app/javascript/packs/

├── application.js
├── my_flights_app
│   └── views
│       └── Airlines.jsx
└── my_flights_app.js
```

#### Import to the app pack an external component

```js
import React from 'react'
import ReactDOM from 'react-dom'
import Airlines from './my_flights_app/views/Airlines'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Airlines/>,
    document.body.appendchild(document.createElement('div')))
})
```

## MailCatcher

MailCatcher runs a super simple SMTP server which catches any message sent to it to display in a web interface. Run mailcatcher, set your favourite app to deliver to smtp://127.0.0.1:1025 instead of your default SMTP server, then check out <http://127.0.0.1:1080> to see the mail.

```shell
gem install mailcatcher
```

## Gists

### Private

These links only will work for the project owner

- [Rubocop configs](https://gist.github.com/LucasBarretto86/0b32b58384c94d8fd02a6c3f5f59ae46)
- [JS utils](https://gist.github.com/LucasBarretto86/3c85ed4a63ff4a77247562b72f8edce3)
- [Basic Profile for Foreman](https://gist.github.com/LucasBarretto86/9d05ece22f05d204cce4fb905e41343e#Procfile)
- [Basic Rubocop config](https://gist.github.com/LucasBarretto86/05dea799fdee07851d4b7c308032497b)
- [Calendar Table](https://gist.github.com/LucasBarretto86/893986ef5a2d9ae2219725de0a53bc3b)

### Public

- [RubyOnRails Snippets](https://gist.github.com/LucasBarretto86/06abfb8a034fc43be29df34ebeb85bab)
- [Local fonts in `asset_path` and CORS adjustment](https://gist.github.com/LucasBarretto86/e1699059e596b7ebffb5b40ac6909d6b)

## Error and fixes

### cannot load such file -- coffee_script

Fix:

```shell
rails tmp:cache:clear
```

## References

- [Foreman](https://www.theforeman.org/introduction.html)
- [Rubocop](https://docs.rubocop.org/rubocop/installation.html)
- [brakeman.org](https://brakemanscanner.org/)
- [Create Rails App with GraphQL](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-ruby-on-rails-graphql-api)
- [Pros and Cons of Using structure.sql in Your Ruby on Rails Application](https://blog.appsignal.com/2020/01/15/the-pros-and-cons-of-using-structure-sql-in-your-ruby-on-rails-application.html)


## Rails Credentials

  