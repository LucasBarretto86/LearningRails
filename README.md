# Learning Ruby On Rails

- [Learning Ruby On Rails](#learning-ruby-on-rails)
  - [Rails](#rails)
    - [Install Rails version](#install-rails-version)
    - [Creating new Rails App](#creating-new-rails-app)
      - [For older Rails versions](#for-older-rails-versions)
      - [Configured as API app](#configured-as-api-app)
      - [Configured with React libs (Rails 6 or above)](#configured-with-react-libs-rails-6-or-above)
      - [Configuring database representation](#configuring-database-representation)
        - [Moving from schema to structure](#moving-from-schema-to-structure)
    - [Rails Credentials](#rails-credentials)
      - [Generate credentials](#generate-credentials)
        - [Setup EDITOR](#setup-editor)
          - [Master key setup](#master-key-setup)
          - [Environment based key setup](#environment-based-key-setup)
        - [Credentials file created, content initial state](#credentials-file-created-content-initial-state)
      - [Editing  credentials](#editing--credentials)
        - [Master key for all environments](#master-key-for-all-environments)
        - [Specific keys based on environment](#specific-keys-based-on-environment)
      - [Using credentials](#using-credentials)
    - [Generators](#generators)
      - [Models generator](#models-generator)
      - [executing SQL](#executing-sql)
        - [executing](#executing)
        - [Getting values, Select Value](#getting-values-select-value)
    - [API](#api)
      - [Jbuilder](#jbuilder)
        - [Rendering collection](#rendering-collection)
      - [Set values](#set-values)
      - [Merge values](#merge-values)
      - [Define key format standard](#define-key-format-standard)
    - [Validations](#validations)
      - [Validate with custom method](#validate-with-custom-method)
      - [Validate with context](#validate-with-context)
      - [Validate associations](#validate-associations)
      - [Save based on context](#save-based-on-context)
    - [Routes](#routes)
      - [Members](#members)
      - [Constraints](#constraints)
      - [Extending router](#extending-router)
    - [Testing](#testing)
      - [Accessing test console](#accessing-test-console)
      - [Setup database on test environment](#setup-database-on-test-environment)
    - [Initializers](#initializers)
      - [Inflections](#inflections)
        - [Allowing a Acronym](#allowing-a-acronym)
        - [Allowing irregular plural](#allowing-irregular-plural)
    - [Kill PUMA](#kill-puma)
  - [Redis](#redis)
    - [Install Redis](#install-redis)
    - [Check Redis status](#check-redis-status)
    - [Starting Redis with specific Port](#starting-redis-with-specific-port)
    - [Restarting Redis](#restarting-redis)
    - [Stop Redis](#stop-redis)
    - [Redis Configuration File](#redis-configuration-file)
    - [Redis on console](#redis-on-console)
    - [Usage](#usage)
      - [Set](#set)
      - [Get](#get)
    - [Redis as cache](#redis-as-cache)
    - [View usage](#view-usage)
    - [Monitoring Redis](#monitoring-redis)
  - [Kredis](#kredis)
  - [GraphQL](#graphql)
    - [Adding gem `graphiql-rails`](#adding-gem-graphiql-rails)
    - [`graphiql-rails` initial configuration](#graphiql-rails-initial-configuration)
    - [Mounting GraphQl engine to routes](#mounting-graphql-engine-to-routes)
    - [Generating ObjectTypes](#generating-objecttypes)
  - [RSPEC](#rspec)
    - [Installing RSPEC](#installing-rspec)
      - [Generate RSPEC required files](#generate-rspec-required-files)
    - [Mock and Doubles](#mock-and-doubles)
      - [Doubles](#doubles)
        - [Method stubs](#method-stubs)
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
  - [Specific GEMS](#specific-gems)
    - [Flipper](#flipper)
      - [Add Flipper to gemfile](#add-flipper-to-gemfile)
      - [run Flipper generator](#run-flipper-generator)
      - [Flipper Usage](#flipper-usage)
    - [SimpleCov](#simplecov)
  - [Rails Template](#rails-template)
  - [Gists](#gists)
    - [Private](#private)
    - [Public](#public)
  - [Snippets](#snippets)
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
  - [Error and fixes](#error-and-fixes)
    - [Postgres - Fixing PG Error for new rails apps](#postgres---fixing-pg-error-for-new-rails-apps)
    - [cannot load such file -- coffee\_script](#cannot-load-such-file----coffee_script)
  - [References](#references)

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

### Rails Credentials

#### Generate credentials

##### Setup EDITOR

If you don't have a editor setup it, it can be any editor as long as it's alias is configured, to define it type the command below

###### Master key setup

```shell
EDITOR="nano" rails credentials:edit
```

###### Environment based key setup

```shell
EDITOR="nano" rails credentials:edit --environment development
```

##### Credentials file created, content initial state

```yml
# .credentials.yml

# aws:
#   access_key_id: 123
#   secret_access_key: 345

# Used as the base secret for all MessageVerifiers in Rails, including the one protecting cookies.
secret_key_base: dd21f3b9e7d9daabab940d815e70e51fee47e5914315e46af6e741f96c8522818543c07805a322d582a340b33bba0d08af971e214b044d72d0623dfc70ec647a
```

#### Editing  credentials

##### Master key for all environments

```shell
rails credentials:edit
```

##### Specific keys based on environment

```shell
rails credentials:edit --environment development
```

#### Using credentials

Within the project

```rb
Rails.application.credentials.aws[:access_key_id]
```

### Generators

To check available generators native and from dependencies

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

#### executing SQL

Rails allow us to execute or get values from SQL

##### executing

```rb
ActiveRecord::Base.connection.execute('SELECT NOW();')
```

```bash
irb(main):003:0> ActiveRecord::Base.connection.execute('SELECT NOW();')
   (0.3ms)  SELECT NOW();
=> #<PG::Result:0x00007f5129693e18 status=PGRES_TUPLES_OK ntuples=1 nfields=1 cmd_tuples=1>   
```

##### Getting values, Select Value

```rb
ActiveRecord::Base.connection.select_value("SQL QUERY")
```

**Output:**

```bash
irb(main):001:0> ActiveRecord::Base.connection.select_value("SELECT EXTRACT (QUARTER FROM TIMESTAMP '#{Date.current}')")
   (0.7ms)  SELECT EXTRACT (QUARTER FROM TIMESTAMP '2022-11-10')
=> 4.0  
```

### API

#### Jbuilder

Jbuilder allow creation of json in a simple data structure, to create a jbuilder file we use extension `.json.jbuilder`

```rb
# app/views/messages/show.json.jbuilder

json.content format_content(@message.content)
json.(@message, :created_at, :updated_at)

json.author do
  json.name @message.creator.name.familiar
  json.email_address @message.creator.email_address_with_name
  json.url url_for(@message.creator, format: :json)
end

if current_user.admin?
  json.visitors calculate_visitors(@message)
end

json.comments @message.comments, :content, :created_at
```

**Output:**

```json
{
  "content": "<p>This is <i>serious</i> monkey business</p>",
  "created_at": "2011-10-29T20:45:28-05:00",
  "updated_at": "2011-10-29T20:45:28-05:00",

  "author": {
    "name": "David H.",
    "email_address": "'David Heinemeier Hansson' <david@heinemeierhansson.com>",
    "url": "http://example.com/users/1-david.json"
  },

  "visitors": 15,

  "comments": [
    { "content": "Hello everyone!", "created_at": "2011-10-29T20:45:28-05:00" },
    { "content": "To you my good sir!", "created_at": "2011-10-29T20:47:28-05:00" }
  ],
}
```

##### Rendering collection

```rb
# app/views/imaging/progressions/series/_series.json.jbuilder

json.id series.id
json.name series.name

json.images series.images do |image|
  json.id image.id
  json.url url_for(image.file.blob)
end
```

**Output:**

```json
{
  "id": 460,
  "name": "Standard 8",
  "images": [
    {
      "id": 52,
      "url": "/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBPUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--33a5df63e10cc18b415d85267d42701ee7902cf5/placeholder.jpg"
    },
    {
      "id": 53,
      "url": "/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBPZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--cd1f772ba26bb7579f972f1d0db6fc4b957f98ca/placeholder.jpg"
    }
  ]
}
```

#### Set values

```rb
json.set! :author do
  json.set! :name, 'David'
end
```

**Output:**

```json
{"author": { "name": "David" }}
```

#### Merge values

```rb
hash = { author: { name: "David" } }

json.post do
  json.title "Merge HOWTO"
  json.merge! hash
end
```

**Output:**

```json
"post": { "title": "Merge HOWTO", "author": { "name": "David" } }
```

#### Define key format standard

```rb
# initializer/jbuilder.rb

Jbuilder.key_format camelize: :lower
```

### Validations

#### Validate with custom method

```rb
class Example < ApplicationRecord
  validate :custom_validation

  private
    def custom_validation
         errors.add(:custom_validation, "There's some custom error message you created here") if some_condition_are_not_fulfilled
    end
end
```

#### Validate with context

```rb
class Example < ApplicationRecord
    validates :name, presence: true, on: :custom_context
end

class Example::NamesController < ApplicationController
  def create
    @example = Example.assign_attributes(example_names_params)
    if @example.valid?(:custom_context)
      @example.save!
    end 
    
    private
      def example_names_params
        params.require(:example).permit(:name)
      end
  end
end
```

#### Validate associations

```rb
class Exercise < ApplicationRecord
    has_one :example

    validates_associated :example
end

class ExercisesController < ApplicationController
  def new
    @example = @exercise.build_example
  end

  def create
    @exercise.build_example(example_params) 

    if @exercise.valid?(:custom_context)
      @exercise.save!
    else
      render :new, status: :not_acceptable
    end 
    
    private
      def example_params
        params.require(:example).permit(:name, :description, :etc)
      end
  end
end
```

#### Save based on context

```rb
class Example < ApplicationRecord
    validates :name, presence: true, on: :custom_context
end

class Example::NamesController < ApplicationController
  def new
    @example = Example.new
  end

  def create
    @example = Example.assign_attributes(example_names_params)

    if @example.save!(on: :custom_context)
      redirect_to example_path(@example)
    else
      render :new, status: :not_acceptable
    end 
    
    private
      def example_names_params
        params.require(:example).permit(:name)
      end
  end
end
```

### Routes

#### Members

```rb
resource :availability, only: [:new, :create] do
  member do
    get "/:booking_appointment_cache_id/edit", to: "availabilities#edit", as: :edit
    patch "/:booking_appointment_cache_id", to: "availabilities#update"
  end
end
```

#### Constraints

```rb
constraints lambda { |request| Clinic.exists? subdomain: request.subdomain } do
  devise_for :staff_members, controllers: {
    registrations: 'staff_members/registrations',
    passwords: 'staff_members/passwords',
  }

  scope module: :public do
    get 'c/:token', to: 'appointments/confirms#show', as: :confirmed_appointment
    post 'c/:token', to: 'appointments/confirms#update', as: :confirm_appointment
  end

  resources :appointments, only: [] do
    scope module: :appointments do
        resource :export, only: [:show]
      end
    end
end
```

#### Extending router

```rb
module LegacyRoutes
  def self.extended(router)
    router.instance_exec do
    end
  end
end
```

### Testing

#### Accessing test console

```shell
rails c -e test
```

#### Setup database on test environment

```shell
rails db:drop RAILS_ENV=test
rails db:create RAILS_ENV=test
rails db:migrate RAILS_ENV=test
rails db:seed RAILS_ENV=test
```

### Initializers

#### Inflections

The inflection initializer allow you to define terminologies, plurals and etc..

##### Allowing a Acronym

```rb
# config/initializers/inflections.rb

ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.acronym 'SMS'
end
```

##### Allowing irregular plural

```rb
# config/initializers/inflections.rb

ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular 'person', 'people'
end

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

Developers often look for systems that would increase the speed and performance of their projects. One popular system like that is Redis. It is an open-source, in-memory database used as a cache and message broker. It is also known as a data structure server.

What makes it unique compared to relational database systems is the ability to store high-level data types, such as maps, lists, and sets. It also offers an easy-to-use interface, atomic manipulation of data, and exceptional performance.

### Install Redis

```shell
sudo apt install redis
gem install redis
```

### Check Redis status

```shell
redis-cli ping
```

```shell
systemctl status redis
```

### Starting Redis with specific Port

```shell
redis-server --port 6380 --daemonize yes
```

### Restarting Redis

```shell
/etc/init.d/redis-server restart
```

OR

```shell
sudo systemctl restart redis-server
```

### Stop Redis

```shell
sudo systemctl stop redis
```

### Redis Configuration File

The default Redis configuration file is located in `/etc/redis/redis.conf` directory. To change Redis server to listen a particular IP address, you need to edit the `/etc/redis/redis.conf` file.

```shell
sudo nano /etc/redis/redis.conf
```

> Locate the line `bind 127.0.0.1 ::1`.

```mono
################################## NETWORK #####################################

# By default, if no "bind" configuration directive is specified, Redis listens
# for connections from all available network interfaces on the host machine.
# It is possible to listen to just one or multiple selected interfaces using
# the "bind" configuration directive, followed by one or more IP addresses.
# Each address can be prefixed by "-", which means that redis will not fail to
# start if the address is not available. Being not available only refers to
# addresses that does not correspond to any network interface. Addresses that
# are already in use will always fail, and unsupported protocols will always BE
# silently skipped.
#
# Examples:
#
# bind 192.168.1.100 10.0.0.1     # listens on two specific IPv4 addresses
# bind 127.0.0.1 ::1              # listens on loopback IPv4 and IPv6
# bind * -::*                     # like the default, all available interfaces
#
# ~~~ WARNING ~~~ If the computer running Redis is directly exposed to the
# internet, binding to all the interfaces is dangerous and will expose the
# instance to everybody on the internet. So by default we uncomment the
# following bind directive, that will force Redis to listen only on the
# IPv4 and IPv6 (if available) loopback interface addresses (this means Redis
# will only be able to accept client connections from the same host that it is
# running on).
#
# IF YOU ARE SURE YOU WANT YOUR INSTANCE TO LISTEN TO ALL THE INTERFACES
# COMMENT OUT THE FOLLOWING LINE.
#
# You will also need to set a password unless you explicitly disable protected
# mode.
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
bind 127.0.0.1 -::1
```

Change the IP address by entering the values of the connections you want the Redis server to listen for.

To add multiple IP addresses, simply separate the IP addresses with a single space:

```mono
bind 70.25.220.238 70.25.220.239
```

### Redis on console

```rb
# irb
require 'redis'

redis = Redis.new # Default params

OR

redis = Redis.new(host: "10.0.1.1", port: 6380, db: 15) # Optional params
```

### Usage

redis.set "KEY_NAME", "VALUE"

#### Set

```rb
redis.set "Test", "This is a test string"
```

#### Get

```rb
redis.get "Test"
```

### Redis as cache

**Within the gemfile add:**

```gemfile
gem "redis-rails"
```

**Config Redis on project:**

- Original:

```rb
# config/environments/development.rb

# Enable/disable caching. By default caching is disabled.
# Run rails dev:cache to toggle caching.
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end
```

- Modified:

```rb
config.action_controller.perform_caching = true

config.cache_store = :redis_store, {
 host: "localhost",
 port: 6379,
 db: 15,
 namespace: "028redis"
}

```

- `memory_store` limits the amount of cache to the server cache limitations, therefore it won't allow usage of multiple host and multiple processes
- `host` will be the address corresponding to the server and localhost on development
- `namespace` allow us to segregate the usage of database usage in different applications, lets says you have multiple apps using the `db: 0` so in that case needs to use namespace to avoid problems

**Festalab config in prod:**

```rb
  # Use a different cache store in production.

  config.cache_store = :redis_cache_store, {
    url: ENV['AWS_REDIS_CACHE_URL'],
    read_timeout: 0.2,
    connect_timeout: 30,
    write_timeout: 0.2
  }
```

### View usage

```erb
<h1>Test redis</h1>
<p>Here there's a cache test to explain redis usage as cache</p>

<% cache 'testing-cache-key', expire_in: Time.now + 1.hour do %>
  <%= w%[ testing_value_01, testing_value_02, testing_value_03, testing_value_04].sample %>
<% end %>
```

- On that example we gonna create a cache that expires in one hour, if no value is assigned or expired it will assign a random sample value form the array

### Monitoring Redis

to have an monitor to check redis log we use the CLI

```shell
redis-cli monitor
```

## Kredis

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

### Installing RSPEC

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

rubocop has a lib for rspec

```shell
gem install rubocop-rspec
```

#### Generate RSPEC required files

```shell
rails g rspec:install
```

### Mock and Doubles

Mocking with RSpec is done with the `rspec-mocks` gem. If you have rspec as a dependency in your Gemfile, you already have rspec-mocks available.

#### Doubles

A double is a simplified object that take place from an actual model

```rb
feed = double
```

Or you can give your double a identifier

```rb
feed = double("feed")
```

##### Method stubs

To stub methods in RSPEC is used `allow()` and `receive()` methods

```rb
allow(feed).to receive(:fetch).and_return("imagine I'm a JSON string")
```

**Output:**

```mono
feed.fetch
=> "imagine I'm a JSON string"
```

The `and_return()` method is optional, if not added the method stubbed will return `nil`

On stubs you can also use real objects

```rb
comment = double("comment")
expect(Comment).to receive(:find).and_return(comment)
```

**Stub a method within another method:**

```rb
# method
  def sync_balance
    ..
    
    [available, pending] = Balance.retrieve(account_id)

    update_columns(
      available: cents_to_dollars(available),
      pending: cents_to_dollars(pending)
    )
  end
```

```rb
# Tests 
it "#sync_balance" do
  allow(Thorn::Stripe::Balance).to receive(:retrieve).and_return(
    {
      amount_available: 10000,
      amount_pending: 5000
    }
  )

  ledger.sync_balance

  expect(ledger.reload.gateway_available.to_i).to eq 100
  expect(ledger.reload.gateway_pending.to_i).to eq 50
end
```

> In that scenario we the method `retrieve` from the class `Thorn::Stripe::Balance` is called within the method we are testing from the `ledger` object `sync_balance`.

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

| Command                        | Description                                     |
| :----------------------------- | :---------------------------------------------- |
| rails webpacker:info           | Provides information on Webpacker's environment |
| rails webpacker:binstubs       | Installs Webpacker binstubs in this application |
| rails webpacker:verify_install | Verifies if Webpacker is installed              |
| rails webpacker:clean          | Remove old compiled webpacks                    |
| rails webpacker:clobber        | Removes the webpack compiled output directory   |

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

```mono
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

MailCatcher runs a super simple SMTP server which catches any message sent to it to display in a web interface. Run mailcatcher, set your favorite app to deliver to smtp://127.0.0.1:1025 instead of your default SMTP server, then check out <http://127.0.0.1:1080> to see the mail.

```shell
gem install mailcatcher
```

## Specific GEMS

### Flipper

#### Add Flipper to gemfile

```gemfile
gem "flipper-cloud"
gem "flipper-active_record"
```

#### run Flipper generator

```shell
bin/rails g flipper:active_record
bin/rails db:migrate
```

> Remember to set you ENV variable: `FLIPPER_CLOUD_TOKEN=<your-token-here>`

#### Flipper Usage

```rb
# Enable a feature for everyone
Flipper.enable :search

# Enable a feature for a specific actor
Flipper.enable_actor :search, current_user

# Enable a feature for a group of actors
Flipper.enable_group :search, :admin

# Enable a feature for a percentage of actors
Flipper.enable_percentage_of_actors :search, 2
```

> For more specifications for usage, see: <https://www.flippercloud.io/docs>

### SimpleCov

## Rails Template

<https://railsbytes.com/public/templates>

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

## Snippets

### Implementations and snippets quick access

### Current class and ActiveSupport::CurrentAttributes implementation

CurrentAttributes came out on Rails 5.2 allow us to control session variables, follow steps below

#### Basic Implementation

#### Create `current.rb` class

```rb
# frozen_string_literal: true

class Current < ActiveSupport::CurrentAttributes
  attribute :request_id, :user_agent, :ip_address, :user, :request, :clinic
end
```

#### Create controller concern `set_current_attributes.rb` to load attributes

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

#### Include concern to the `application_controller.rb`

```rb
class ApplicationController < ActionController::Base 
  include SetCurrentAttributes
end

```

#### Adding Current variables on Mailer previews

Since mailer preview uses Rails classes and itself is required to add initializer configs to be able to set data coming from session request

##### Basic implementation for mailer initializer `config/initializers/action_mailer.rb`

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

### Allowing local fonts in assets pipeline and CORS

#### Adjusting `assets.rb` initializer to add fonts as part of pipeline

```rb
# /\.(?:svg|eot|woff|ttf)$/ to allow fonts to be precompiled to enabled it to be referenced by asset_path after CORS is allowed

Rails.application.config.assets.precompile  += %w(/\.(?:svg|eot|woff|ttf)$/) 

Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
```

#### Install gem `rack-cors`

```gemfile
# Rails middleware
gem "rack-cors"
```

#### Adding `Rack::Cors` as middleware initializer

```rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '/assets/*', headers: :any, methods: [:get, :post, :patch, :put]
  end
end
```

#### How to call fonts on `css.erb` or `html.erb`

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

##### how to precompile assets to test locally

```shell
rails assets:precompile
```

### Helpers

#### ApplicationHelper

```rb
def dom_id_for_view(prefix: nil, suffix: nil)
  "id=#{[prefix || controller_name, suffix || action_name].compact.join("-")}"
end

def dom_class_for_view(options = {})
  default_class = "#{[options[:prefix] || controller_name, options[:suffix] || action_name].compact.join("-")}"
  "class=#{options[:class] || default_class }"
end
```

### locale dynamic configs

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

An error occurred while installing pg (1.2.3), and Bundler cannot continue.

```shell
sudo apt install postgresql-contrib libpq-dev
```

## Error and fixes

### Postgres - Fixing PG Error for new rails apps

An error occurred while installing pg (1.2.3), and Bundler cannot continue.

```shell
sudo apt-get install postgresql-contrib libpq-dev
```

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
- [SemaphoreCI tutorials - Mocking with RSPEC](https://semaphoreci.com/community/tutorials/mocking-with-rspec-doubles-and-expectations)
- [Rails Jbuilder](https://github.com/rails/jbuilder)
