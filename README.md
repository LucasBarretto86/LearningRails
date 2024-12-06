# Learning Ruby On Rails

- [Learning Ruby On Rails](#learning-ruby-on-rails)
  - [Installation](#installation)
  - [Configurations](#configurations)
    - [Database (schema vs structure.sql)](#database-schema-vs-structuresql)
    - [Credentials and ENVs](#credentials-and-envs)
      - [Rails credentials](#rails-credentials)
      - [Custom YAML Credentials](#custom-yaml-credentials)
      - [Dotenv Credentials](#dotenv-credentials)
  - [Initializers](#initializers)
    - [Inflections](#inflections)
      - [Allowing a Acronym](#allowing-a-acronym)
        - [Allowing irregular plural](#allowing-irregular-plural)
  - [Creating new Rails apps](#creating-new-rails-apps)
  - [Generators](#generators)
    - [Scaffold generator](#scaffold-generator)
    - [Models generator](#models-generator)
    - [Controllers generator](#controllers-generator)
    - [Channel generator](#channel-generator)
  - [Helpers](#helpers)
    - [ApplicationHelper](#applicationhelper)
    - [locale dynamic configs](#locale-dynamic-configs)
  - [Validations](#validations)
  - [Routes](#routes)
    - [Members](#members)
    - [Constraints](#constraints)
    - [Extending router](#extending-router)
    - [Direct routes](#direct-routes)
  - [Jobs](#jobs)
    - [Sidekiq](#sidekiq)
    - [Redis](#redis)
      - [Redis as cache](#redis-as-cache)
  - [Action Cable](#action-cable)
  - [Query](#query)
    - [SQL through connection](#sql-through-connection)
  - [Hotwire](#hotwire)
  - [API](#api)
    - [Jbuilder](#jbuilder)
    - [Serializers](#serializers)
  - [ActiveStorage](#activestorage)
    - [Configuring S3 for ActiveStorage](#configuring-s3-for-activestorage)
    - [Attaching Files to Records](#attaching-files-to-records)
    - [Removing file](#removing-file)
    - [Encrypted attachments](#encrypted-attachments)
    - [variants](#variants)
  - [Logger](#logger)
    - [Customized Logger](#customized-logger)
  - [Patterns](#patterns)
    - [Strategy](#strategy)
    - [Presenters](#presenters)
    - [Service classes](#service-classes)
    - [Adapter](#adapter)
    - [Singletons](#singletons)
    - [Form Object](#form-object)
    - [Form definition](#form-definition)
      - [Usage](#usage)
  - [Kredis](#kredis)
    - [**Configuring Kredis:**](#configuring-kredis)
  - [Docker](#docker)
    - [Creating `Dockerfile.dev`](#creating-dockerfiledev)
    - [Creating docker-compose files](#creating-docker-compose-files)
    - [Build and Running Container for development](#build-and-running-container-for-development)
  - [GraphQL](#graphql)
    - [Adding gem `graphiql-rails`](#adding-gem-graphiql-rails)
    - [`graphiql-rails` initial configuration](#graphiql-rails-initial-configuration)
    - [Mounting GraphQl engine to routes](#mounting-graphql-engine-to-routes)
    - [Generating ObjectTypes](#generating-objecttypes)
  - [Webpack](#webpack)
    - [Run dev server](#run-dev-server)
  - [Webpacker](#webpacker)
    - [Add Webpacker with default configs](#add-webpacker-with-default-configs)
    - [Adding Stimulus (Webpacker 5 or below)](#adding-stimulus-webpacker-5-or-below)
    - [Rake tasks that allow checking Webpacker installation](#rake-tasks-that-allow-checking-webpacker-installation)
      - [To check available commands](#to-check-available-commands)
        - [Most important commands to check webpacker health](#most-important-commands-to-check-webpacker-health)
  - [ESbuild](#esbuild)
  - [Importmaps](#importmaps)
  - [React with in Rails project](#react-with-in-rails-project)
    - [Configuration](#configuration)
      - [Installing react into the project with webpacker](#installing-react-into-the-project-with-webpacker)
      - [Dealing with routes](#dealing-with-routes)
      - [Create js pack within the application](#create-js-pack-within-the-application)
      - [Update application layout or specific layout](#update-application-layout-or-specific-layout)
      - [Implement a component within a view folder](#implement-a-component-within-a-view-folder)
      - [Tree for pack folders folders views](#tree-for-pack-folders-folders-views)
      - [Import to the app pack an external component](#import-to-the-app-pack-an-external-component)
  - [Testing Frameworks](#testing-frameworks)
    - [Rspec](#rspec)
      - [Rspec generators](#rspec-generators)
      - [Mock and Doubles](#mock-and-doubles)
  - [GEM Creation](#gem-creation)
    - [GEM generator](#gem-generator)
    - [GEM code implement](#gem-code-implement)
    - [How to test GEM code on development](#how-to-test-gem-code-on-development)
  - [Rails Template](#rails-template)
  - [GEMS](#gems)
    - [Bootstrap](#bootstrap)
    - [Devise](#devise)
      - [Creating the User Model with Devise](#creating-the-user-model-with-devise)
      - [Setup routes with Devise](#setup-routes-with-devise)
      - [Configurations and Concern reference table](#configurations-and-concern-reference-table)
    - [JWT](#jwt)
      - [What is JWT?](#what-is-jwt)
    - [Annotate](#annotate)
    - [Factory Bot](#factory-bot)
    - [Faker](#faker)
    - [Flipper](#flipper)
      - [Add Flipper to gemfile](#add-flipper-to-gemfile)
      - [run Flipper generator](#run-flipper-generator)
      - [Flipper Usage](#flipper-usage)
    - [SimpleCov](#simplecov)
    - [Guard](#guard)
    - [Database Cleaner](#database-cleaner)
    - [Audited](#audited)
      - [Install gem `audited`](#install-gem-audited)
      - [Setup `audited`](#setup-audited)
    - [Paranoia](#paranoia)
      - [Install gem `paranoia`](#install-gem-paranoia)
      - [Setup `paranoia`](#setup-paranoia)
    - [MailCatcher](#mailcatcher)
    - [Nokogiri](#nokogiri)
    - [Foreman](#foreman)
    - [Rubocop](#rubocop)
    - [Brakeman](#brakeman)
    - [pg\_search](#pg_search)
      - [Install pg\_search](#install-pg_search)
      - [Setup multisearch](#setup-multisearch)
      - [Adding search attribute to model](#adding-search-attribute-to-model)
    - [Scenic](#scenic)
  - [Rails 8](#rails-8)
    - [User Authentication](#user-authentication)
    - [Further considerations](#further-considerations)
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
  - [Concepts](#concepts)
  - [Issues](#issues)
    - [Postgres - Fixing PG Error for new rails apps](#postgres---fixing-pg-error-for-new-rails-apps)
    - [cannot load such file -- coffee\_script](#cannot-load-such-file----coffee_script)
    - [Bundler running on wrong version](#bundler-running-on-wrong-version)
    - [Wicked FUCKING PDF fix](#wicked-fucking-pdf-fix)
  - [References](#references)

## Installation

```shell
gem install rails -v 6.1.5
```

> `-v` allow you to enforce a specific rails version installation
---

## Configurations

### Database (schema vs structure.sql)

`schema.rb`

Basic database representation

- It is a Ruby representation of your database; schema.rb is created by inspecting the database and expressing its structure using Ruby.
- It is database-agnostic (i.e. whether you use SQLite, PostgreSQL, MySQL or any other database that Rails supports, the syntax and structure will remain largely the same)

`structure.sql`

Mature database representation

- It allows for an exact copy of the database structure. This is important when working with a team, as well as if you need to rapidly generate a new database in production from a rails db:setup task.
- It allows preserving information of advanced database features. For example, if you are using PostgreSQL, it enables the use of views, materialized views, functions, constraints and so on.

**Moving from schema to structure:**

```rb
# config/application.rb

  class Application < Rails::Application
  # ...
    config.active_record.schema_format = :sql
  end
```

---

### Credentials and ENVs

#### Rails credentials

**Editing credentials:**

```shell
EDITOR="nano" rails credentials:edit --environment development
```

> Each environment has its on encrypted credential files

**Credential (Examples):**

```yml
# aws:
#   access_key_id: 123
#   secret_access_key: 345

# Used as the base secret for all MessageVerifiers in Rails, including the one protecting cookies.
secret_key_base: dd21f3b9e7d9daabab940d815e70e51fee47e5914315e46af6e741f96c8522818543c07805a322d582a340b33bba0d08af971e214b044d72d0623dfc70ec647a
```

**Using Rails credentials:**

```rb
Rails.application.credentials.aws[:access_key_id]
```

> Notice that if key has more than one level we use `[]`
---

#### Custom YAML Credentials

On rails you can use many way to keep track from your credentials, here there's a simple example how to configure credentials on a YAML file

First we add the setup on the main config

```rb
#config/application.rb

# Setup environment variable using YAML
config.before_configuration do
  env_file = File.join(Rails.root, ".env.#{Rails.env}.yml")
  YAML.load(File.open(env_file)).each do |key, value|
    ENV[key.to_s] = value
  end if File.exists?(env_file)
end
```

After that we create a YML file like this:

```yml
# .env.development.yml

# AWS Credentials
AWS_S3_ACCESS_KEY_ID: "ADSHJKmndajhdDSKJHkjh"
AWS_S3_SECRET_ACCESS_KEY: "DKLJASDKLJiojujkldjsaidsakjlSDLKJÇLJKDÇLksjljiojopiqw"
AWS_S3_BUCKET_NAME: "my-fake-bucket
```

Since he have added a file on the project we need also to add it to .gitignore in order to protect this sensitive info

```mono
# See https://help.github.com/articles/ignoring-files for more about ignoring files.
#
# If you find yourself ignoring temporary files generated by your text editor
# or operating system, you probably want to add a global ignore instead:
#   git config --global core.excludesfile '~/.gitignore_global'

# Ignore bundler config.
/.bundle

.....

# [Lucas] Ignore development and test local vars
.env.development.yml
```

---

#### Dotenv Credentials

<!-- TODO -->

---

## Initializers

### Inflections

The inflection initializer allow you to define terminologies, plurals and etc..

#### Allowing a Acronym

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

## Creating new Rails apps

**Create app with postgresql database:**

```shell
rails new my-app --database=postgresql
```

**Create app for specific Rails version:**

```shell
rails _5.2.7_ new my-flights-app
```

**Create app configured as API:**

```shell
rails new my_api --api
```

**Create aap configured with React libs (Rails 6 and above):**

```shell
rails new my-app --webpack=react --database=postgresql
```

**Create app configured with bootstrap:**

```shell
rails new my-app --css=bootstrap
```

**Configured with postcss, postgres and esbuild:**

```rb
rails new lucasbarretto.com -d postgresql -j esbuild -c postcss -T
```

> `-d` set database as `postgresql`
> `-j` set javascript framework as `esbuild`
> `-c` set css framework as `postcss`
> `-T` remove default test framework
---

## Generators

To check available generators native and from dependencies

```shell
rails generate

# OR

rails g
```

### Scaffold generator

```sh
rails generate scaffold Post title:string body:text
```

### Models generator

**Simple model:**

```shell
rails g model Airline name:string image_url:string slug:string
```

**Model with reference:**

```shell
rails g model Review title:string description:string score:integer airline:belongs_to
```

**Model with reference to a different table:**

```sh
rails g model Post author:references_to{foreign_key:users} content:text
```

**Model with polymorphic:**

```shell
rails g model Image position:integer description:string imageable:belongs_to{polymorphic}
```

### Controllers generator

```sh
rails g controller API::V1::Session create destroy
```

### Channel generator

```sh
rails g channel Notification
```

---

## Helpers

### ApplicationHelper

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

---

## Validations

**validate:**

```rb
class Example < ApplicationRecord
  validate :custom_validation

  private
    def custom_validation
         errors.add(:custom_validation, "There's some custom error message you created here") if some_condition_are_not_fulfilled
    end
end
```

**Validation context:**

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

**Associated validation:**

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

---

## Routes

### Members

```rb
resource :availability, only: [:new, :create] do
  member do
    get "/:booking_appointment_cache_id/edit", to: "availabilities#edit", as: :edit
    patch "/:booking_appointment_cache_id", to: "availabilities#update"
  end
end
```

### Constraints

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

### Extending router

```rb
module LegacyRoutes
  def self.extended(router)
    router.instance_exec do
    end
  end
end
```

---

### Direct routes

<!-- TODO -->

---

## Jobs

<!-- TODO -->

### Sidekiq

**Running Sidekiq:**

```shell
bundle exec sidekiq
```

But you can run sidekiq also using custom configs using flag `-C` and config file path

```yml
# config/sidekiq.yml

development:
  :concurrency: 5
  :queues:
    - [critical]
    - [high]
    - [renderer]
    - [default]
    - [low]
    - [backfill]
production:
  :concurrency: <%= ENV.fetch("SIDEKIQ_CONCURRENCY") { 3 } %>
  :queues:
    - [critical, 10]
    - [high, 5]
    - [default, 2]

max_retries: <%= ENV.fetch("SIDEKIQ_MAX_RETRIES") { 25 } %>

```

```shell
bundle exec sidekiq -C config/sidekiq.yml
```

**Flushing Sidekiq JOBS:**

```rb
# Open Rails console
rails c

# Connect to Redis
redis = Redis.new(host: 'localhost', port: 6379)

# Flush all Redis databases
redis.flushall

# Or flush the current Redis database
# redis.flushdb

# Delete specific Sidekiq keys
redis.keys("sidekiq:*").each do |key|
  redis.del(key)
end

# OR

Sidekiq.redis(&:flushdb)
```

**Sidekiq cleaning:**

```sh
require 'sidekiq/api'

# 1. Clear retry set

Sidekiq::RetrySet.new.clear

# 2. Clear scheduled jobs 

Sidekiq::ScheduledSet.new.clear

# 3. Clear 'Processed' and 'Failed' jobs

Sidekiq::Stats.new.reset

# 3. Clear 'Dead' jobs statistics

Sidekiq::DeadSet.new.clear

# Stats

stats = Sidekiq::Stats.new
stats.queues
# {"production_mailers"=>25, "production_default"=>1}

# Queue

queue = Sidekiq::Queue.new('queue_name')
queue.count
queue.clear
queue.each { |job| job.item } # hash content

# Redis Access

Sidekiq.redis { |redis| redis.keys }
```

[Credits for @wbotelhos](https://gist.github.com/wbotelhos/fb865fba2b4f3518c8e533c7487d5354)

### Redis

Developers often look for systems that would increase the speed and performance of their projects. One popular system like that is Redis. It is an open-source, in-memory database used as a cache and message broker. It is also known as a data structure server.

What makes it unique compared to relational database systems is the ability to store high-level data types, such as maps, lists, and sets. It also offers an easy-to-use interface, atomic manipulation of data, and exceptional performance.

**Install Redis:**

```shell
sudo apt install redis
gem install redis
```

**Check Redis status:**

```shell
redis-cli ping
```

```shell
systemctl status redis
```

**Starting Redis with specific Port:**

```shell
redis-server --port 6380 --daemonize yes
```

**Making Redis starts on boot:**

```shell
sudo systemctl enable redis-server 
```

**Restarting Redis:**

```shell
/etc/init.d/redis-server restart
```

OR

```shell
sudo systemctl restart redis-server
```

**Stop Redis:**

```shell
sudo systemctl stop redis
```

**Redis Configuration File:**

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

**Redis on console:**

```rb
# irb
require 'redis'

redis = Redis.new # Default params

OR

redis = Redis.new(host: "10.0.1.1", port: 6380, db: 15) # Optional params
```

**Redis usage:**

redis.set "KEY_NAME", "VALUE"

**Set:**

```rb
redis.set "Test", "This is a test string"
```

**Get:**

```rb
redis.get "Test"
```

#### Redis as cache

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

**View usage:**

```erb
<h1>Test redis</h1>
<p>Here there's a cache test to explain redis usage as cache</p>

<% cache 'testing-cache-key', expire_in: Time.now + 1.hour do %>
  <%= w%[ testing_value_01, testing_value_02, testing_value_03, testing_value_04].sample %>
<% end %>
```

- On that example we gonna create a cache that expires in one hour, if no value is assigned or expired it will assign a random sample value form the array

**Monitoring Redis:**

to have an monitor to check redis log we use the CLI

```shell
redis-cli monitor
```

---

## Action Cable

**Creating a Channel:**

```sh
rails g channel Notification
```

**Setup websocket Connection:**

On the connection class we need to define the algorithm to connect Server and Clinic, keep in mind that websocket communication doesn't happen through http protocol, but the first connection occurs with http protocol, after connection occurs all the communication goes through Websocket protocol.

```rb
module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    private
      def find_verified_user
        if verified_user = User.find_by(id: cookies.encrypted[:user_id])
          verified_user
        else
          reject_unauthorized_connection
        end
      end
  end
end
```

**Setup cable connection endpoint:**

We need to define endpoint where the communication will come in and out

```rb
Rails.application.routes.draw do
  # ...
  mount ActionCable.server => '/cable'
  # ...
end  
```

**Setup channel:**

```rb
class ChatChannel < ApplicationCable::Channel
  # Called when the consumer has successfully
  # become a subscriber to this channel.

  def subscribed
      stream_from "chat_whatever_name"
  end
end
```

Notice the subtle difference between the two: the conversations channel is using stream_from while the messages channel is using stream_for. Really these are two different ways of doing the same thing, except stream_from expects to receive a string as an argument, while stream_for expects an object from the model. If you’d like to learn more about the differences between the two, you can read about it here.

**Broadcast example:**

```rb
# Somewhere in your app this is called, perhaps
# from a NewCommentJob.
ActionCable.server.broadcast(
  "chat_whatever_name",
  {
    sent_by: 'Paul',
    body: 'This is a cool chat app.'
  }
)

```

---

## Query

### SQL through connection

**execute:**
Rails allow us to execute or get values from SQL

```rb
ActiveRecord::Base.connection.execute('SELECT NOW();')
```

**example:**

```sh
irb(main):003:0> ActiveRecord::Base.connection.execute('SELECT NOW();')
   (0.3ms)  SELECT NOW();
=> #<PG::Result:0x00007f5129693e18 status=PGRES_TUPLES_OK ntuples=1 nfields=1 cmd_tuples=1>   
```

**select:**

Getting values, Select Value

```rb
ActiveRecord::Base.connection.select_value("SELECT EXTRACT (QUARTER FROM TIMESTAMP '#{Date.current}')")
```

**Example:**

```sh
irb(main):001:0> ActiveRecord::Base.connection.select_value("SELECT EXTRACT (QUARTER FROM TIMESTAMP '#{Date.current}')")
   (0.7ms)  SELECT EXTRACT (QUARTER FROM TIMESTAMP '2022-11-10')
=> 4.0  
```

---

## Hotwire

`Hotwire` is a framework for building modern, real-time, interactive applications in Rails without relying heavily on JavaScript. It combines Turbo and Stimulus to enhance user experience.

Real-world examples:

- Live Chat System
- Live Search
- Real-time Notifications
- Forms with Validation

<!-- TODO -->

---

## API

### Jbuilder

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

**Rendering collection:**

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

**Rendering collection with `Set!`:**

```rb
json.set! :author do
  json.set! :name, 'David'
end
```

**Output:**

```json
{"author": { "name": "David" }}
```

**Merge values:**

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

**Define key format standard:**

```rb
# initializer/jbuilder.rb

Jbuilder.key_format camelize: :lower
```

---

### Serializers

<!-- TODO -->

---

## ActiveStorage

> Rails depend on external applications to handle specific files like images, videos and PDF
>
>- `libvips` v8.6+ or `ImageMagick` for image analysis and transformations
>- `ffmpeg` v3.4+ for video previews and `ffprobe` for video/audio analysis
>- `poppler` or `muPDF` for PDF previews

**ActiveStorage setup:**

In order to work properly it's also required to add to the gemfile a gem specifically to handle active_record variants

```gemfile
gem "image_processing", ">= 1.2"
```

```shell
bin/rails active_storage:install
bin/rails db:migrate
```

### Configuring S3 for ActiveStorage

```rb
bundle add aws-sdk-s3
```

```rb
# config/storage.yml

local:
  service: Disk
  root: <%= Rails.root.join("storage") %>

test:
  service: Disk
  root: <%= Rails.root.join("tmp/storage") %>

amazon:
  service: S3
  access_key_id: <%= ENV['AWS_S3_ACCESS_KEY_ID'] %>
  secret_access_key: <%= ENV['AWS_S3_SECRET_ACCESS_KEY'] %>
  region: us-east-1
  bucket: <%= ENV['AWS_S3_BUCKET_NAME'] %>
  public: true
  http_open_timeout: 5
  http_read_timeout: 5
  retry_limit: 2
```

> **Notice:** that for a saver use case it's better to use environment variable

After that we need to setup application environment config behavior, in this case we gonna keep images on development locally and only will upload to S3 on production environment:

```rb
# config/environments/development.rb

config.active_storage.service = :local
```

```rb
# config/environments/production.rb

config.active_storage.service = :amazon
```

However it's possible to upload files in any environment as long as you specify on the specific config file.

### Attaching Files to Records

To add attachments to a specific model we must use method within the model we want to keep the attachment related to

**has_one:**

```rb
class User < ApplicationRecord
  has_one_attached :avatar
end
```

**has_many:**

```rb
class User < ApplicationRecord
  has_many_attached :pictures
end
```

**has attach for specific service config:**
It's also to force attach file for a specific service in case you have more than one cloud service

```rb
class Message < ApplicationRecord
  has_many_attached :images, service: :s3
end
```

**Attaching and setting up a variant:**

```rb
class Message < ApplicationRecord
  has_many_attached :images do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end
end
```

**Attaching File/IO Objects:**

```rb
# images_controller#create

@message.images.attach(io: File.open('/path/to/file'), filename: 'file.pdf')
```

OR

```rb
# images_controller#create

@message.images.attach(io: File.open('/path/to/file'), filename: 'file.pdf', content_type: 'application/pdf')
```

**Attaching bypassing content_type:**

```rb
# images_controller#create

@message.images.attach(
  io: File.open('/path/to/file'),
  filename: 'file.pdf',
  content_type: 'application/pdf',
  identify: false
)
```

### Removing file

```rb
# Synchronously destroy the avatar and actual resource files.
user.avatar.purge

# Destroy the associated models and actual resource files async, via Active Job.
user.avatar.purge_later
```

To learn more about ActiveStorage, check here: <https://guides.rubyonrails.org/active_storage_overview.html>

### Encrypted attachments

<https://alisepehri.medium.com/preview-for-amazon-s3-client-side-encrypted-active-storage-files-8e3ba55accb8>

### variants

```rb
# app/views/blogs/show.html.erb

<%= image_tag blog.display_picture.variant(resize_to_limit: [100, 100]) %>
```

```rb
class Blog < ActiveRecord::Base
  has_one_attached :display_picture, variants: {
    thumb: { resize: "100x100" },
    medium: { resize: "300x300" }
  }
end

# app/views/blogs/show.html.erb
<%= image_tag blog.display_picture.variant(:thumb) %>
```

---

## Logger

### Customized Logger

## Patterns

### Strategy

<!-- TODO -->

### Presenters

<!-- TODO -->

### Service classes

<!-- TODO -->

### Adapter

<!-- TODO -->

### Singletons

Singleton is a design pattern that ensures that a class has only one instance and provides a global point of access to that instance.

Basically are objects that gets instantiated once on the application and remains globally available without needing to be instancianted again coz it keeps available throughout the runtime of the application, so when you use it you will always get the same instance, instead of keep creating garbage.

**Example:**

```rb
# app/lib

class DatabaseConnection
  attr_accessor :connection
  
  def initialize
    @connection = establish_database_connection
  end
  
  def self.instance
    @instance ||= new
  end
  
private
  
  def establish_database_connection
    # Whatever code is needed to establish connection
  end
end
```

### Form Object

Form objects in Rails are used to handle complex forms that interact with multiple models or when you need to encapsulate form-specific behavior that doesn't belong in the models themselves.

> Form objects in Rails are related to the `Command Pattern`. The Command Pattern is a behavioral design pattern that encapsulates a request as an object, thereby allowing for parameterization of clients with different requests, queueing of requests, and logging of the requests. It also provides support for not doable operations.

### Form definition

```rb
# app/forms/user_profile_form.rb
class UserProfileForm
  include ActiveModel::Model

  attr_accessor :first_name, :last_name, :email, :password, :profile_bio, :user

  validates :first_name, :last_name, :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { minimum: 6 }, if: -> { password.present? }

  def save
    return false unless valid?

    ActiveRecord::Base.transaction do
      user.update!(first_name: first_name, last_name: last_name, email: email, password: password.presence || user.password)
      user.profile.update!(bio: profile_bio)
    end

    true
  rescue ActiveRecord::RecordInvalid
    false
  end

  def self.from_user(user)
    new(
      first_name: user.first_name,
      last_name: user.last_name,
      email: user.email,
      profile_bio: user.profile.bio,
      user: user
    )
  end
end
```

#### Usage

```rb
# app/controllers/users_controller.rb
class UsersController < ApplicationController
  def new
    @user_profile_form = UserProfileForm.new
  end

  def create
    @user_profile_form = UserProfileForm.new(user_profile_params)

    if @user_profile_form.save
      redirect_to user_path(@user_profile_form.user), notice: 'Profile created successfully.'
    else
      render :new
    end
  end

  def edit
    @user_profile_form = UserProfileForm.from_user(current_user)
  end

  def update
    @user_profile_form = UserProfileForm.new(user_profile_params.merge(user: current_user))

    if @user_profile_form.save
      redirect_to user_path(current_user), notice: 'Profile updated successfully.'
    else
      render :edit
    end
  end

  private

  def user_profile_params
    params.require(:user_profile_form).permit(:first_name, :last_name, :email, :password, :profile_bio)
  end
end
```

## Kredis

Kredis is a higher level wrapper for your redis database which allow you to store more complex data-structure on your redis.

### **Configuring Kredis:**

within your project run

```sh
bundle add kredis
rails kredis:install
```

after kredis is install it will create a YAML file `config/redis/shared.yml`

```tree
config
└── redis
    └── shared.yml
```

**Custom or Additional configs:**

Additional configurations can be added under `config/redis/*.yml` and referenced when a type is created. For example, `Kredis.string("mystring", config: :strings)` would lookup `config/redis/strings.yml`.

**Usage:**

**Creating record:**

```rb
irb(main):001:0> str = Kredis.string "exampleString"
  Kredis  (6.4ms)  Connected to shared
=> 
#<Kredis::Types::Scalar:0x00007fd8c1337b28
```

**Rendering object:**

```rb
irb(main):002:0> str
=> 
#<Kredis::Types::Scalar:0x00007fd8c1337b28
 @default=nil,
 @expires_in=nil,
 @key="exampleString",
 @proxy=#<Kredis::Types::Proxy:0x00007fd8c1337970 @key="exampleString", @redis=#<Redis client v4.5.1 for redis://localhost:6379/2>>,
 @typed=:string>
```

**Setting value:**

```rb
irb(main):003:0> str.set "Some sentence as example here"
  Kredis Proxy (0.5ms)  SET exampleString ["Some sentence as example here"] 
=> "OK"

# OR

irb(main):004:0> str.value = "Another sentence as example here"
  Kredis Proxy (0.3ms)  SET exampleString ["Another sentence as example here"] 
=> "OK"
```

**Retrieving value:**

```rb
irb(main):005:0> str.value
  Kredis Proxy (0.3ms)  GET exampleString  
=> "Some sentence as example here"
```

**Kredis within ActiveRecords:**

That's where kredis really shines, it also give us the ability to create data-structures on redis within ActiveRecord models, kredis give us various methods that allow creation of these structures, such an unique list.

**Adding a kredis method to an ActiveRecord:**

```rb
# app/models/user.rb

class User < ApplicationRecord  
  kredis_unique_list :recent_searches, limit: 5
end
```

**Basic usage on a view:**

```erb
<% current_user.recent_searches.elements.each do |query| %>
  <%= link_to query, root_path(query: query) %>
<% end %>
```

Look further this example [here](/specifics/LearningRubyOnRails/src/example_projects/learning-kredis)

## Docker

New rails version has already a helpful dockerfile for production, however to be able to use docker also for development is necessary to create a specific dockerfile and also add the docker-compose.file

### Creating `Dockerfile.dev`

```shell
# ./

touch Dockerfile.dev
```

```Dockerfile
# syntax=docker/dockerfile:1
# check=error=true

# Base image with the correct Ruby version
ARG RUBY_VERSION=3.3.0
FROM docker.io/library/ruby:$RUBY_VERSION-slim AS base

# Set working directory for the Rails app
WORKDIR /rails

# Install base packages including postgresql to avoid pg issue
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y curl libjemalloc2 libvips postgresql-client && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

# Set production environment
ENV RAILS_ENV="development"

# Throw-away build stage to reduce the final image size
FROM base AS build

# Install packages needed to build gems
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential git libpq-dev pkg-config && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

# Install application gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy application code
COPY . .

# Precompile bootsnap code for faster boot times
RUN bundle exec bootsnap precompile app/ lib/

# Final stage for the app image
FROM base

# Copy installed gems and app code from the build stage
COPY --from=build /usr/local/bundle /usr/local/bundle
COPY --from=build /rails /rails

# Create a non-root user for security and set up necessary directories
RUN groupadd --system --gid 1000 rails && \
    useradd rails --uid 1000 --gid 1000 --create-home --shell /bin/bash && \
    chown -R rails:rails db log storage tmp
USER 1000:1000

# Entrypoint prepares the database.
ENTRYPOINT ["/rails/bin/docker-entrypoint"]

# Expose port for Rails app
EXPOSE 3000

CMD ["./bin/thrust", "./bin/rails", "server", "-b", "0.0.0.0"]

# OR

# RAILS < 8
# CMD ["./bin/rails", "server", "-b", "0.0.0.0"]
```

### Creating docker-compose files

Then we gonna create the compose files, noticed that on `build` directive we will use the directive `dockerfile` to specify which file the compose will use.

```shell
# ./

touch docker-compose.yml
touch docker-compose.dev.yml
```

```yml
# docker-compose.dev.yml

services:
  web:
    build:
      context: .
      dockerfile: Dockerfile.dev
    container_name: my-api_c
    ports:
      - "3000:3000"
    volumes:
      - .:/rails
      - ./db:/rails/db
    environment:
      RAILS_ENV: "development"
      DATABASE_URL: "sqlite3:///rails/db/development.sqlite3"

volumes:
  db:

```

**For production:**

```yml
# docker-compose.yml

services:
  web:
    build:
      context: .
      dockerfile: Dockerfile
    container_name: my-api_c
    ports:
      - "3000:3000"
    volumes:
      - .:/rails
      - ./db:/rails/db
    environment:
      RAILS_ENV: "production"
      DATABASE_URL: "sqlite3:///rails/db/production.sqlite3"

volumes:
  db:
```

### Build and Running Container for development

```shell
docker-compose -f docker-compose.dev.yml up --build
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

## ESbuild

<!-- TODO -->

---

## Importmaps

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

## Testing Frameworks

### Rspec

**Rspec installation:**

```Gemfile
group :development, :test do
  ...
  gem "rspec-rails"
end
```

rubocop has a lib for Rspec

```Gemfile
...

group :development do
  ...
  gem install rubocop-rspec
end

```

**Setup Rspec:**

```shell
rails g rspec:install
```

#### Rspec generators

```sh
rails g rspec:model User
```

#### Mock and Doubles

Mocking with RSpec is done with the `rspec-mocks` gem. If you have rspec as a dependency in your Gemfile, you already have rspec-mocks available.

**Doubles:**

A double is a simplified object that take place from an actual model

```rb
feed = double
```

Or you can give your double a identifier

```rb
feed = double("feed")
```

**Method stubs:**

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

## GEM Creation

### GEM generator

to generate basic gem structure run

```rb
bundle gem your_gem_name
```

Gem naming convention:

- Use dashes and extensions but keep in mind that every dash represents a structure (folder, module)
  - For example if we have a gem name like  gem-structure-demo_notifier, it will generate a structure like `gem/structure/demo_notifier` and its class or module will have a name like module/class `Gem::Structure::DemoNotifier`
- Don’t use uppercase letters

**Creation process example:**

```shell
Creating gem 'gem-learning_create_gem'...
Do you want to generate tests with your gem?
Future `bundle gem` calls will use your choice. This setting can be changed anytime with `bundle config gem.test`.
Enter a test framework. rspec/minitest/test-unit/(none): minitest
Do you want to set up continuous integration for your gem? Supported services:
* CircleCI:       https://circleci.com/
* GitHub Actions: https://github.com/features/actions
* GitLab CI:      https://docs.gitlab.com/ee/ci/

Future `bundle gem` calls will use your choice. This setting can be changed anytime with `bundle config gem.ci`.
Enter a CI service. github/gitlab/circle/(none): github
Do you want to license your code permissively under the MIT license?
This means that any other developer or company will be legally allowed to use your code for free as long as they admit you created it. You can read more about the MIT license at https://choosealicense.com/licenses/mit. y/(n): y
MIT License enabled in config
Do you want to include a code of conduct in gems you generate?
Codes of conduct can increase contributions to your project by contributors who prefer collaborative, safe spaces. You can read more about the code of conduct at contributor-covenant.org. Having a code of conduct means agreeing to the responsibility of enforcing it, so be sure that you are prepared to do that. Be sure that your email address is specified as a contact in the generated code of conduct so that people know who to contact in case of a violation. For suggestions about how to enforce codes of conduct, see https://bit.ly/coc-enforcement. y/(n): n
Do you want to include a changelog?
A changelog is a file which contains a curated, chronologically ordered list of notable changes for each version of a project. To make it easier for users and contributors to see precisely what notable changes have been made between each release (or version) of the project. Whether consumers or developers, the end users of software are human beings who care about what's in the software. When the software changes, people want to know why and how. see https://keepachangelog.com y/(n): y
Changelog enabled in config
Do you want to add a code linter and formatter to your gem? Supported Linters:
* RuboCop:       https://rubocop.org
* Standard:      https://github.com/testdouble/standard

Future `bundle gem` calls will use your choice. This setting can be changed anytime with `bundle config gem.linter`.
Enter a linter. rubocop/standard/(none): rubocop
RuboCop enabled in config
Initializing git repo in /home/barretto86/Projects/RubyMineProjects/gem-learning_create_gem
hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint: 
hint:  git config --global init.defaultBranch <name>
hint: 
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint: 
hint:  git branch -m <name>
      create  gem-learning_create_gem/Gemfile
      create  gem-learning_create_gem/lib/gem/learning_create_gem.rb
      create  gem-learning_create_gem/lib/gem/learning_create_gem/version.rb
      create  gem-learning_create_gem/sig/gem/learning_create_gem.rbs
      create  gem-learning_create_gem/gem-learning_create_gem.gemspec
      create  gem-learning_create_gem/Rakefile
      create  gem-learning_create_gem/README.md
      create  gem-learning_create_gem/bin/console
      create  gem-learning_create_gem/bin/setup
      create  gem-learning_create_gem/.gitignore
      create  gem-learning_create_gem/test/test_helper.rb
      create  gem-learning_create_gem/test/gem/test_learning_create_gem.rb
      create  gem-learning_create_gem/.github/workflows/main.yml
      create  gem-learning_create_gem/LICENSE.txt
      create  gem-learning_create_gem/CHANGELOG.md
      create  gem-learning_create_gem/.rubocop.yml
Gem 'gem-learning_create_gem' was successfully created. For more information on making a RubyGem visit https://bundler.io/guides/creating_gem.html
```

### GEM code implement

The code the gem will use, must be written on the generated file: `/lib/gem/learning_create_gem.rb`

```rb
# frozen_string_literal: true

require_relative "learning_create_gem/version"

module Gem
  module LearningCreateGem
    class Error < StandardError; end
      # Your code here
  end
end
```

### How to test GEM code on development

To test our gem code as we development it we must use `irb` and require `rubygems` and our gem path as well `./lib/gem/learning_create_gem`

```rb
user@machine-name: irb
irb(main):001:0> require 'rubygems'
=> false
irb(main):002:0> require './lib/gem/learning_create_gem'
=> true
irb(main):003:0> Gem::LearningCreateGem.methods
```

## Rails Template

<https://railsbytes.com/public/templates>

## GEMS

### Bootstrap

<https://dev.to/coorasse/rails-7-bootstrap-5-and-importmaps-without-nodejs-4g8>

- Create standard clean app
- Install `boostrap` gem and `sassc-rails`

### Devise

**Devise gem installation:**

```Gemfile
gem "devise" 
```

```sh
bundle exec rails g devise:install
```

**Devise turbo setup:**

After run the install task a initializer will be created on `config/initializers/devise.rb`

To setup devise we need to uncomment the line:

```rb
Devise.setup do |config|
  # ...

  config.navigational_formats = ['*/*', :html, :turbo_stream]

  # ...
end
```

> This line adds `turbo_stream` as a navigational format. Turbo Streams are a part of Turbo, which lets you send server-rendered HTML and render pages without using much JavaScript. You need to add this for Devise 4.8.1 to work with Rails 7; otherwise, you'd get an undefined method user_url error.

#### Creating the User Model with Devise

```sh
bundle exec rails g devise user
```

This generator will produce:

```rb
# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable
```

And also the model User:

```rb
class User < ApplicationRecord
# Include default devise modules. Others available are:
# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :validatable
end
```

> - **database_authenticatable:** Users can authenticate themselves with a login and password field. Their encrypted password will be stored in your database.
> - **registerable:** Users can register themselves and can edit or delete their accounts.
> - **recoverable:** Users can reset their password and recover their accounts if they forget their credentials.
> - **rememberable:** This module remembers a user's sessions by saving the information in a browser cookie.
> - **validatable:** This module provides validations for the user's email and password fields.

**Changing validatable parameters:**

Regarding the `validatable` concern from react, you will notice that your application will automatically validate the password to be at least six characters, even though you haven’t defined any custom validations in your model.
This configurations comes from the devise initializer, so if you want to change some of this configurations you need to change the `devise.rb`

```rb
  # ==> Configuration for :validatable
  # Range for password length.
  config.password_length = 6..128
```

#### Setup routes with Devise

As you generate the User model with devise you will also notice that it updated the routes file:

```rb
Rails.application.routes.draw do
  devise_for :users
  # ....
end
```

> This is a useful method that defines all the required routes related to user authentication like `/users/sign_in`, `/users/sign_out`, and `/users/password/new`.
> Devise takes care of all of that for you and even keeps the routes file clean.

**Devise routes overwrite:**

```rb
Rails.application.routes.draw do
  devise_for :users, skip: [:sessions], controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords',
  }
end
```

> By overriding the standard devise controller you can add customized logics, in this example registration and password are been override to create custom views and session controller is skipped, because the session management in this snipped will handled different through an API

Devise also allow us to overwrite the de default routes it creates for the user:

```rb
Rails.application.routes.draw do
  devise_for :users, path: "auth", path_names: {
    sign_in: "login",
    sign_out: "logout",
    sign_up: "signup"
  }, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }, skip: [:confirmations]
end

```

#### Configurations and Concern reference table

**Devise Concerns for User Model:**

| **Concern**                 | **Description**                                                                                                                                       | **Methods/Features Added**                                                                                             |
|-----------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| `:database_authenticatable` | Handles email/password authentication using a database.                                                                                             | - `authenticate`, `valid_password?`, `password=`                                                                       |
| `:registerable`             | Adds functionality for user registration.                                                                                                           | - `create`, `update`, `destroy` methods                                                                               |
| `:recoverable`              | Handles password recovery via reset tokens and email notifications.                                                                                 | - `send_reset_password_instructions`, `reset_password`                                                                |
| `:rememberable`             | Adds "Remember Me" functionality, saving authentication tokens to cookies for persistent login.                                                    | - `remember_me!`, `forget_me!`, `remember_token`                                                                      |
| `:trackable`                | Tracks user sign-in stats like sign-in count, timestamps, and IP address.                                                                           | - Updates `current_sign_in_at`, `last_sign_in_at`, `sign_in_count`                                                     |
| `:validatable`              | Validates email and password format and presence by default.                                                                                        | - `email`, `password` validations (customizable)                                                                      |
| `:confirmable`              | Requires users to confirm their email address before being fully authenticated.                                                                     | - `send_confirmation_instructions`, `confirm`, `confirmed?`, `confirmation_token`                                     |
| `:lockable`                 | Locks an account after a specified number of failed sign-in attempts.                                                                               | - `lock_access!`, `unlock_access!`, `locked_at`, `unlock_token`                                                       |
| `:timeoutable`              | Logs users out after a specified period of inactivity.                                                                                              | - Checks session timeout on requests                                                                                   |
| `:omniauthable`             | Adds support for OmniAuth for third-party authentication (e.g., Google, Facebook).                                                                 | - Adds OmniAuth callbacks (`from_omniauth`, etc.)                                                                      |
| `:jwt_authenticatable`      | Handles authentication using JSON Web Tokens (JWT).                                                                                                | - Adds methods for generating and verifying JWTs (requires configuration for `jwt_secret_key`)                        |

---

**Devise Initializer (`config/initializers/devise.rb`):**

| **Configuration**                        | **Description**                                                                                                                                       | **Default**                          |
|------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------|
| `config.mailer_sender`                   | Sender email address for Devise emails.                                                                                                              | `"please-change-me@config-initializers-devise.com"` |
| `config.authentication_keys`            | Keys used for authentication (e.g., email, username).                                                                                                | `[:email]`                           |
| `config.case_insensitive_keys`          | Keys that are case insensitive during authentication.                                                                                                 | `[:email]`                           |
| `config.strip_whitespace_keys`          | Keys where leading/trailing whitespace is stripped.                                                                                                  | `[:email]`                           |
| `config.skip_session_storage`           | Define storage for sensitive data like passwords.                                                                                                    | `[:http_auth]`                       |
| `config.stretches`                      | Number of times to hash passwords for security.                                                                                                      | `12` (default for bcrypt)            |
| `config.reconfirmable`                  | Require reconfirmation when a user changes their email.                                                                                              | `true`                               |
| `config.remember_for`                   | Duration (in seconds) for "Remember Me" functionality.                                                                                               | `2.weeks`                            |
| `config.extend_remember_period`         | Extend "Remember Me" duration after each user action.                                                                                                | `false`                              |
| `config.timeout_in`                     | Inactivity timeout duration for session expiry (used with `:timeoutable`).                                                                           | `30.minutes`                         |
| `config.lock_strategy`                  | Lock strategy for `:lockable` (e.g., `:failed_attempts`).                                                                                             | `:failed_attempts`                   |
| `config.unlock_strategy`                | Unlock strategy for `:lockable` (e.g., `:email`, `:time`, `:both`).                                                                                   | `:both`                              |
| `config.maximum_attempts`               | Maximum failed attempts before locking an account.                                                                                                   | `5`                                  |
| `config.reset_password_within`          | Time duration for a valid password reset token.                                                                                                      | `6.hours`                            |
| `config.sign_out_via`                   | HTTP method(s) allowed for signing out (e.g., `:delete`, `:get`).                                                                                     | `:delete`                            |
| `config.omniauth_path_prefix`           | Path prefix for OmniAuth callbacks.                                                                                                                  | `'/users/auth'`                      |
| `config.scoped_views`                   | Enable separate views per Devise model scope (e.g., `Admin`, `User`).                                                                                 | `false`                              |
| `config.navigational_formats`           | Formats considered navigational (e.g., `:html`).                                                                                                     | `[:html]`                            |
| `config.jwt`                            | JWT configurations (e.g., `secret_key`, `expiration_time`, `dispatch_requests`).                                                                      | Requires manual setup                |
| `config.pepper`                         | Pepper value added to password hashing for additional security.                                                                                       | `nil`                                |
| `config.secret_key`                     | Secret key for Devise. Automatically generated if using Rails secrets.                                                                               | Auto-generated                       |
| `config.parent_controller`              | Parent controller for Devise controllers.                                                                                                           | `"ApplicationController"`            |
| `config.sign_in_after_reset_password`   | Automatically sign in after a password reset.                                                                                                        | `true`                               |

---

### JWT

The gem 'jwt' lets you securely encode and verify tokens, ensuring data integrity in stateless applications, is regarded as the best way to handle authentication on APIs

#### What is JWT?

JSON Web Token a token that we generate so that the client can send on Authorization of Header every request, that token we use to cryptograph requests and authenticate an user

Using JWT tokens involves encoding user data into a token, which is then sent in headers (e.g., `Authorization: Bearer <token>`) to authenticate API requests without storing session data on the server. This way, each request carries its own proof of identity.

**Gem Install:**

```sh
bundle add 'jwt'
```

**How to use:**

**1. Create Service Class:**

```rb
# app/services/jwt_encoder.rb

class JWTEncoder
  JWT_SECRET_KEY = Rails.application.credentials.jwt_secret_key || ENV["JWT_SECRET_KEY"]

  def self.encode(payload)
    JWT.encode(payload, JWT_SECRET_KEY)
  end

  def self.decode(token)
    JWT.decode(token, JWT_SECRET_KEY)&.first
  end
end
```

**2. Create required ENV:**

Notice that `JWT_SECRET_KEY` is ENV, this is use as a 'Salt' on the incryption and decryption, to create a fingerprint to define this ENV we can run

```rb
require 'securerandom'

fingerprint = SecureRandom.hex(64) # Generates a 128-character hexadecimal string
```

That fingerprint you save as a credential or as ENV

**3. Setup usage:**

```rb
# frozen_string_literal: true

class SessionsController < ActionController::API
  def create
    @user = User.find_by(email: session_params[:email])

    if @user&.authenticate(session_params[:password])
      render json: { token: JWTEncoder.encode(user_id: @user.id) }, status: :ok
    else
      render json: { error: "Invalid email or/and password invalid" }, status: :unauthorized
    end
  end

  private
    def session_params
      params.require(:session).permit(:email, :password)
    end
end
```

**4. Test request:**

```json
<!-- Payload: -->
{
  "session": {
    "email": "test@test.com",
    "password": "password"
  }
}

<!-- Response: -->
{
  "token": "eyJhbGciPaHIUzL1NiJ9.eyJ1h5BnR2lkIjoxfQ.h6sPiJG2xs3bieZeo5ghZM9UAk1akeuX_bDNIsbGKyE"
}
```

> That token the front-end will record on `LocalStorage`, and when ever he wants to call the API he will have to add to the request `headers`

```json
headers: { 
  'Content-Type': 'application/json',  
  'Authorization: 'Bear Authorization: Bearer <token>' 
}
```

> `<token>` must be replaced by the token itself
---

### Annotate

Annotate is a great gem that add comments form the table structure into a models and others

**Gem Install:**

```sh
group :development do
  gem 'annotate'
end
```

**Gem setup:**

```rb
rails g annotate:install
```

**Configuration:**

```rb
# lib/tasks/auto_annotate_models.rake

# NOTE: only doing this in development as some production environments (Heroku)
# NOTE: are sensitive to local FS writes, and besides -- it's just not proper
# NOTE: to have a dev-mode tool do its thing in production.
if Rails.env.development?
  require 'annotate'
  task :set_annotation_options do
    # You can override any of these by setting an environment variable of the
    # same name.
    Annotate.set_defaults(
      
      # Basic Configuration for Annotation Positions
      'position_in_class'           => 'bottom',  # Place annotation at the end of the model file
      'position_in_routes'          => 'before',  # Place annotation at the start of the routes file
      'position_in_test'            => 'before',  # Place annotation at the start of test files
      'position_in_fixture'         => 'before',  # Place annotation at the start of fixture files
      'position_in_factory'         => 'before',  # Place annotation at the start of factory files
      'position_in_serializer'      => 'bottom',  # Place annotation at the end of serializer files

      # Model and Directory Configuration
      'model_dir'                   => 'app/models', # Directory to scan for models
      'root_dir'                    => '',           # Root directory for project
      'ignore_model_sub_dir'        => 'false',      # Ignore subdirectories in models folder

      # File Inclusion and Exclusion Settings
      'models'                      => 'true',       # Annotate models
      'routes'                      => 'false',      # Don't annotate routes file
      'active_admin'                => 'false',      # Exclude ActiveAdmin models
      'exclude_tests'               => 'true',       # Exclude test files from annotation
      'exclude_fixtures'            => 'true',       # Exclude fixture files from annotation
      'exclude_factories'           => 'true',       # Exclude factory files from annotation
      'exclude_serializers'         => 'false',      # Include serializers in annotation
      'exclude_scaffolds'           => 'true',       # Exclude scaffold files from annotation
      'exclude_controllers'         => 'true',       # Exclude controller files from annotation
      'exclude_helpers'             => 'true',       # Exclude helper files from annotation
      'exclude_sti_subclasses'      => 'false',      # Annotate STI subclasses
      'ignore_routes'               => nil,          # Set custom routes to ignore
      'ignore_columns'              => nil,          # List columns to ignore during annotation
      'ignore_unknown_models'       => 'false',      # Fail when unknown models are encountered

      # Foreign Key and Index Settings
      'show_foreign_keys'           => 'true',       # Show foreign key relationships in annotation
      'show_complete_foreign_keys'  => 'false',      # Show complete foreign key details
      'show_indexes'                => 'true',       # Show indexes in annotation
      'simple_indexes'              => 'false',      # Show full index details (not simplified)
      'hide_limit_column_types'     => 'integer,bigint,boolean', # Limit column types to hide
      'hide_default_column_types'   => 'json,jsonb,hstore', # Default column types to hide

      # Formatting and Display Options
      'with_comment'                => 'true',       # Add # comments around annotations
      'format_bare'                 => 'true',       # Plain format for annotations
      'format_rdoc'                 => 'false',      # RDoc format (not used)
      'format_yard'                 => 'false',      # YARD format (not used)
      'format_markdown'             => 'false',      # Markdown format (not used)
      'sort'                        => 'false',      # Keep fields unsorted in annotations
      'classified_sort'             => 'true',       # Sort fields by type and name
      'wrapper_open'                => nil,          # Custom opening wrapper for annotation
      'wrapper_close'               => nil,          # Custom closing wrapper for annotation

      # Performance and Debugging
      'trace'                       => 'false',      # Enable debugging trace
      'force'                       => 'false',      # Force overwrite annotations
      'frozen'                      => 'false',      # Mark files as frozen for tracking changes
      'skip_on_db_migrate'          => 'false',      # Run annotation after database migrations

      # Miscellaneous
      'additional_file_patterns'    => [],           # Additional file patterns to annotate
      'include_version'             => 'false',      # Exclude Rails version from annotation
      'require'                     => ''            # Additional files to require
    )
  end

  Annotate.load_tasks
end

```

**Executing annotate:**

```sh
bundle exec annotate
```

---

### Factory Bot

**`factory_bot_rails` gem install:**

Add factory_bot_rails to your Gemfile in :development, :test group

```rb
  group :development, :test do
    ...
    gem 'factory_bot_rails'
  end
```

then run `bundle`

**Factory config for RSPEC:**

Setup the required config on rails_helper

```rb
# spec/rails_helper.rb
RSpec.configure do |config|
  # ...
  config.include FactoryBot::Syntax::Methods
  # ...
end
```

**Factory creation:**

If correctly configured factories should created automatically when a model or a controller is created, however factory bot also add a generator to create factories

```sh
rails g factory_bot:model User first_name:string last_name:string email:string
```

**Example:**

```rb
FactoryBot.define do
  factory :user do
    first_name { "MyString" }
    last_name { "MyString" }
    email { "MyString" }
  end
end
```

**Usage:**

```rb
RSpec.describe User, type: :model do
  let(:user) { build(:user) }
  let(:another_user) { create(:user) }
end
```

---

### Faker

**Faker installation:**

```rb
group :development, :test do
  # ...
  
  gem "faker"
end
```

**Usage:**

```rb
FactoryBot.define do
  factory :user do
    first_name {Faker::Name.name}
    last_name {Faker::Name.last_name}
    email {Faker::Internet.email}
  end
end
```

---

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
---

### SimpleCov

`SimpleCov` is a Ruby gem used to measure code coverage in your applications. It helps identify how much of your code is executed when running tests. By analyzing the parts of your codebase that are covered by tests and those that aren't, it encourages better test coverage and helps identify untested code paths.

```rb
group :test do
  gem 'simplecov', require: false
end
```

**Setup simplecov:**

```rb
# spec/spec_helper.rb
require 'simplecov'
SimpleCov.start 'rails' # or use SimpleCov.start for a generic setup
```

As the tests suite runs a report will be generated in the coverage/ directory

---

### Guard

`Guard` is a Ruby gem that automates tasks by watching for file changes. It is particularly useful for running tests, restarting servers, or performing any repetitive task whenever files in your project are modified.

> Extensible through plugins like `guard-rspec`, `guard-minitest`, and others for tasks like running tests, reloading web servers, or compiling assets.

```rb
gem 'guard-rspec' # Example for RSpec
```

**Initializing Guard:**

```sh
bundle exec guard init rspec
```

> This creates a Guardfile with predefined configurations for RSpec.

```mono
guard :rspec, cmd: "bundle exec rspec" do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^app/(.+)\.rb$}) { |m| "spec/#{m[1]}_spec.rb" }
end
```

**To start Guard:**

```sh
bundle exec guard
```

> Yes it will stays open on terminal to ensure the files force suite run as it gets changed
---

### Database Cleaner

 `Database Cleaner` is a gem for managing your test database. It ensures a clean state for your database before running tests, helping to avoid issues caused by leftover data from previous tests.

**GPT: Rspec already manage isolate test suites? Why would I use DatabaseCleaner?**

> RSpec isolates tests, but doesn't automatically clean the database.
>
> Use DatabaseCleaner for:
>
> - Faster, more reliable cleanup.
> - Customizable cleaning strategies.
> - Handling edge cases like multiple databases.
> - It's especially useful in large test suites.
> - Transaction management: RSpec's default transaction handling can fail in some edge cases, especially with multiple databases, external services, or non-ActiveRecord models.

**Installing DatabaseCleaner:**

```Gemfile
group :test do
  gem 'database_cleaner-active_record'
end
```

**Setup:**

```rb
RSpec.configure do |config|
  # ...
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end

  # ...
end
```

**Database Cleaner configuration table:**

| **Configuration**         | **Description**                                                                                                                                         | **Example**                                                                 |
|----------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| `cleaner.strategy`         | Specifies the cleaning strategy (`:transaction`, `:truncation`, `:deletion`, `:null_strategy`). Determines how Database Cleaner resets the database.   | `DatabaseCleaner.strategy = :transaction`                                  |
| `clean_with`               | Cleans the database immediately, using a specified strategy, regardless of current settings. Useful for ensuring a clean slate before tests run.        | `DatabaseCleaner.clean_with(:truncation)`                                  |
| `allow_production`         | Allows Database Cleaner to run in a production environment (defaults to `false`). This is for extreme caution and should be avoided unless necessary.  | `DatabaseCleaner.allow_production = true`                                  |
| `allow_remote_database_url`| Enables Database Cleaner to clean databases connected via remote URLs. Defaults to `false` for safety reasons.                                         | `DatabaseCleaner.allow_remote_database_url = true`                         |
| `[:active_record].strategy`| Sets the strategy for Active Record (or other ORMs). Database Cleaner supports multiple ORMs, and you can configure each independently.               | `DatabaseCleaner[:active_record].strategy = :deletion`                     |
| `start`                    | Initializes Database Cleaner before test execution begins. Ensures the cleaner is prepared to clean between tests.                                     | `DatabaseCleaner.start`                                                    |
| `clean`                    | Cleans the database according to the selected strategy. Called after each test or test suite.                                                         | `DatabaseCleaner.clean`                                                    |
| `cleaning`                 | Combines `start` and `clean` into a single block for convenience.                                                                                     | `DatabaseCleaner.cleaning { ...test code... }`                             |
| `orm`                      | Configures which ORM Database Cleaner should target. Common ORMs include `:active_record`, `:mongo_mapper`, `:mongoid`, etc.                         | `DatabaseCleaner[:active_record].strategy = :transaction`                  |

---

**Strategies Overview:**

| **Strategy**    | **Description**                                                                                                                                 |
|------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| `:transaction`   | Wraps each test in a database transaction. Rollback occurs automatically at the end of the test. Fastest but not compatible with some setups.  |
| `:truncation`    | Removes all data from the tables by executing `TRUNCATE` statements. Slower than `:transaction`, but more robust.                              |
| `:deletion`      | Deletes data using `DELETE` statements. Slower than `:truncation` but supports databases where `TRUNCATE` isn’t available.                    |
| `:null_strategy` | Does nothing. Useful when testing configurations that don’t require cleaning.                                                                 |

---
---

### Audited

This change is used to create audits for models in a very simple way

#### Install gem `audited`

```gemfile
gem "audited"

# OR

bundle add audited
```

#### Setup `audited`

```mono
rails generate audited:install
rake db:migrate
```

**Usage:**

```rb
class User < ActiveRecord::Base
  audited
end

# By default, whenever a user is created, updated or destroyed, a new audit is created.

user = User.create!(name: "Steve")
user.audits.count # => 1
user.update!(name: "Ryan")
user.audits.count # => 2
user.destroy
user.audits.count # => 3

# Audits contain information regarding what action was taken on the model and what changes were made.

user.update!(name: "Ryan")
audit = user.audits.last
audit.action # => "update"
audit.audited_changes # => {"name"=>["Steve", "Ryan"]}

# You can get previous versions of a record by index or date, or list all revisions.

user.revisions
user.revision(1)
user.revision_at(Date.parse("2016-01-01"))
```

For mor advanced usage check: <https://github.com/collectiveidea/audited>

---

### Paranoia

Gem used to create soft delete for models

#### Install gem `paranoia`

```gemfile

gem "paranoia"
```

#### Setup `paranoia`

Notice that for each model we need to create a migration do add the column deleted_at in this example we are going to show how it would work on an appointment model

```mono
bin/rails generate migration AddDeletedAtToAppointments deleted_at:datetime:index
```

 *Migration:**

```rb
# 20230509133935_add_deleted_at_to_appointments.rb

class AddDeletedAtToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :deleted_at, :datetime
    add_index :appointments, :deleted_at
  end
end
```

**Usage:**

```rb
class Client < ActiveRecord::Base
  acts_as_paranoid

  # ...
end

# Hey presto, it's there! Calling destroy will now set the deleted_at column:
client.deleted_at
# => nil
client.destroy
# => client
client.deleted_at
# => [current timestamp]

# If you really want it gone gone, call really_destroy!:
client.deleted_at
# => nil
client.really_destroy!
# => client

#If you need skip updating timestamps for deleting records, call really_destroy!(update_destroy_attributes: false). When we call really_destroy!(update_destroy_attributes: false) on the parent client, then each child email will also have really_destroy!(update_destroy_attributes: false) called.

client.really_destroy!(update_destroy_attributes: false)
# => client
```

---

### MailCatcher

MailCatcher runs a super simple SMTP server which catches any message sent to it to display in a web interface. Run mailcatcher, set your favorite app to deliver to smtp://127.0.0.1:1025 instead of your default SMTP server, then check out <http://127.0.0.1:1080> to see the mail.

```shell
gem install mailcatcher
```

---

### Nokogiri

**Installation:**

```sh
gem install nokogiri

# OR

bundle add nokogiri
```

We can test Nokogiri very easily on Rails console

```rb
# rails c

require 'open-uri'

doc = Nokogiri::HTML(URI.open("http://www.google.com/"))
pp doc

# OR

doc = File.open("blossom.html") { |f| Nokogiri::HTML(f) }
pp doc
```

> In some cases you might not be able to reach the url, it can happen for various reasons, but if it's a regular public link, its probably because we need to send additional options specifying the User-Agent from this request:

```rb
require 'open-uri'

url = "http://www.google.com/"

options = options = {
  "User-Agent": "Mozilla/5.0"
 }

doc = Nokogiri::HTML(URI.open(url, options))
```

---

### Foreman

> If you are using esbuild it already has foreman out of the box, so you just need to run `bin/dev` which uses the `Procfile.dev` that exists on the root folder

Foreman is a tool that run all required services needed to run a project

Installing Foreman gem

```shell
gem install foreman

or 

bundle add foreman
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

---

### Rubocop

```Gemfile
group :development do
  # ...

  gem "rubocop-rails", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-discourse", require: false

  #  For minitest
  gem "rubocop-minitest", require: false 

  # For RSPEC
  gem "rubocop-rspec", require: false 
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

---

### Brakeman

Brakeman: Is a free vulnerability scanner specifically designed for Ruby on Rails applications. It statically analyzes Rails application code to find security issues at any stage of development

```Gemfile
group :development do
  # ...

  gem 'brakeman'
end
```

```shell
bundle exec brakeman
```

---

### pg_search

#### Install pg_search

```shell
bundle add pg_search
```

#### Setup multisearch

```shell
rails g pg_search:migration:multisearch
rails db:migrate
```

#### Adding search attribute to model

```rb
# frozen_string_literal: true

module Patient::Searchable
  extend ActiveSupport::Concern
  include PgSearch::Model

  included do
    pg_search_scope :search, against: :full_name

    scope :default_order, -> { reorder("priority DESC") }
  end
end
```

To search

```rb
Patient.search("Jane")
```

**Output:**

```rb
=> 
[#<Patient:0x00007ff6e2b1e398
  id: 3914,
  gf_external_id: "144986529183",
  first_name: "Jane",
  middle_name: "",
  last_name: "McInernay",
  full_name: "Jane McInernay Reilly",
  page_source: "",
  created_at: Wed, 01 Mar 2023 20:49:00.725568000 UTC +00:00,
  updated_at: Sun, 19 Mar 2023 14:52:58.290029000 UTC +00:00,
  image_script: false,
  notes_green_script: true,
  notes_yellow_script: true,
  active: false,
  appointment_script: false,
  ledger_script: false,
  medical_script: false,
  profile_script: true>,
 #<Patient:0x00007ff6e2b1e2d0
  id: 4121,
  gf_external_id: "145020362130",
  first_name: "Jane ",
  middle_name: "",
  last_name: "Kinsella",
  full_name: "Jane  Kinsella",
  page_source: "",
  created_at: Wed, 01 Mar 2023 20:49:00.817765000 UTC +00:00,
  updated_at: Sun, 19 Mar 2023 15:35:20.366462000 UTC +00:00,
  image_script: false,
  notes_green_script: true,
  notes_yellow_script: true,
  active: false,
  appointment_script: false,
  ledger_script: false,
  medical_script: false,
  profile_script: true>,
 #<Patient:0x00007ff6e2b1e208
  id: 6466,
  gf_external_id: "200038492862",
  first_name: "Jane  ",
  middle_name: "",
  last_name: "Fishler",
  full_name: "Jane Fishler",
  page_source: "",
  created_at: Wed, 01 Mar 2023 20:49:01.857211000 UTC +00:00,
  updated_at: Sun, 19 Mar 2023 23:35:07.825168000 UTC +00:00,
  image_script: false,
  notes_green_script: true,
  notes_yellow_script: true,
  active: false,
  appointment_script: false,
  ledger_script: false,
  medical_script: false,
  profile_script: true>
  ]
```

---

### Scenic

<https://github.com/scenic-views/scenic>

> Handling SQL views within rails
---

## Rails 8

### User Authentication

[How to Setup Authentication in Rails 8](https://medium.com/@azzenabidi/how-to-setup-authentication-in-rails-8-33295a31c356)

On Rails 8 there's this idea that authentication must be dealt  in house, avoiding to use gems like devise for instance, so they implemented a authentication generator that get all the hard work done

```sh
rails g authentication
```

**Output:**

```mono
invoke  erb
      create    app/views/passwords/new.html.erb
      create    app/views/passwords/edit.html.erb
      create    app/views/sessions/new.html.erb
      create  app/models/session.rb
      create  app/models/user.rb
      create  app/models/current.rb
      create  app/controllers/sessions_controller.rb
      create  app/controllers/concerns/authentication.rb
      create  app/controllers/passwords_controller.rb
      create  app/channels/application_cable/connection.rb
      create  app/mailers/passwords_mailer.rb
      create  app/views/passwords_mailer/reset.html.erb
      create  app/views/passwords_mailer/reset.text.erb
      create  test/mailers/previews/passwords_mailer_preview.rb
      insert  app/controllers/application_controller.rb
       route  resources :passwords, param: :token
       route  resource :session
        gsub  Gemfile
      bundle  install --quiet
    generate  migration CreateUsers email_address:string!:uniq password_digest:string! --force
       rails  generate migration CreateUsers email_address:string!:uniq password_digest:string! --force 
      invoke  active_record
      create    db/migrate/20241120214018_create_users.rb
    generate  migration CreateSessions user:references ip_address:string user_agent:string --force
       rails  generate migration CreateSessions user:references ip_address:string user_agent:string --force 
      invoke  active_record
      create    db/migrate/20241120214019_create_sessions.rb
```

As you can see it creates all the good stuff already

> I guess the highlight from the generator is the creation of Authentication concern that attaches to the Application controller, if you look further on this concern you will notice very interesting things like the usage of the Current from CurrentAttributes and Session model usage to hold session information, that is something else. The idea to have a table to hold session was something that always came to my mind, it's a great way to hold session stuff like last access and ip_address, it also matches the usage of session id with cookies

### Further considerations

I had two problems using straight out of the box generator, first when it creates the User model it defines the email field as `email_address` I don't get why, because, the method used on the `sessions_controller` generated uses `authenticated_by` and it expects the fields to be `email` and `password`. Another problem I got was on the terminal it complained about params not permitted, so I had to create e default strong_params:

```rb
  private
    def session_params
      params.require(:session).permit(:email, :password)
    end
```

---

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

---

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

## Concepts

<!-- TODO -->

---

## Issues

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

### Bundler running on wrong version

To enforce bundler to run on a specific version:

```shell
 asdf shell ruby 3.1.2 && bundle install
```

> Be sure to have ruby installed for this version

### Wicked FUCKING PDF fix

```shell
Failed to execute:
["/home/barretto86/.asdf/installs/ruby/3.3.0/bin/wkhtmltopdf", "file:////tmp/wicked_pdf20240628-782788-1aadgn.html", "/tmp/wicked_pdf_generated_file20240628-782788-v8spwc.pdf"]
Error: PDF could not be generated!
Command Error: /home/barretto86/.asdf/installs/ruby/3.3.0/lib/ruby/gems/3.3.0/gems/wkhtmltopdf-binary-0.12.6.6/bin/wkhtmltopdf_ubuntu_18.04_amd64: error while loading shared libraries: libssl.so.1.1: cannot open shared object file: No such file or directory
```

**Fix - Ubuntu 22.04:**

```shell
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.22_amd64.deb
sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2.22_amd64.deb
```

---

## References

- [Foreman](https://www.theforeman.org/introduction.html)
- [Rubocop](https://docs.rubocop.org/rubocop/installation.html)
- [brakeman.org](https://brakemanscanner.org/)
- [Create Rails App with GraphQL](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-ruby-on-rails-graphql-api)
- [Pros and Cons of Using structure.sql in Your Ruby on Rails Application](https://blog.appsignal.com/2020/01/15/the-pros-and-cons-of-using-structure-sql-in-your-ruby-on-rails-application.html)
- [SemaphoreCI tutorials - Mocking with RSPEC](https://semaphoreci.com/community/tutorials/mocking-with-rspec-doubles-and-expectations)
- [Rails Jbuilder](https://github.com/rails/jbuilder)
- [Kredis](https://github.com/rails/kredis)
- [pg_search](https://www.mintbit.com/blog/searching-made-easy-with-pg-search-gem-in-ruby-on-rails)
- [Singletons](https://medium.com/@rpissardo/entendendo-singletons-em-ruby-on-rails-exemplos-funcionais-85f9c8280fd8)
