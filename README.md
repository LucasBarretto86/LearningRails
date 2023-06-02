# Learning Ruby On Rails

- [Learning Ruby On Rails](#learning-ruby-on-rails)
  - [Rails](#rails)
    - [Install Rails version](#install-rails-version)
    - [Creating new Rails App](#creating-new-rails-app)
      - [For older Rails versions](#for-older-rails-versions)
      - [Configured as API app](#configured-as-api-app)
      - [Configured with React libs (Rails 6 or above)](#configured-with-react-libs-rails-6-or-above)
      - [Configured with bootstrap an jsBuilding (esBuild)](#configured-with-bootstrap-an-jsbuilding-esbuild)
      - [Configured with postcss, postgres and esbuild](#configured-with-postcss-postgres-and-esbuild)
    - [Rails Database representation](#rails-database-representation)
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
    - [YAML Credentials](#yaml-credentials)
    - [Generators](#generators)
      - [Models generator](#models-generator)
      - [executing SQL](#executing-sql)
        - [executing](#executing)
        - [Getting values, Select Value](#getting-values-select-value)
    - [Hotwire](#hotwire)
    - [API](#api)
      - [Jbuilder](#jbuilder)
        - [Rendering collection](#rendering-collection)
      - [Set values](#set-values)
      - [Merge values](#merge-values)
      - [Define key format standard](#define-key-format-standard)
    - [ActiveStorage](#activestorage)
      - [ActiveStorage setup](#activestorage-setup)
      - [Configuring S3 for ActiveStorage](#configuring-s3-for-activestorage)
      - [Attaching Files to Records](#attaching-files-to-records)
      - [Removing file](#removing-file)
      - [Encrypted attachments](#encrypted-attachments)
      - [variants](#variants)
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
    - [Logger](#logger)
      - [Customized Logger](#customized-logger)
    - [Importmaps and Bootstraps without nodeJS](#importmaps-and-bootstraps-without-nodejs)
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
    - [Configuring Kredis](#configuring-kredis)
      - [Custom or Additional configs](#custom-or-additional-configs)
    - [Kredis basic usage example](#kredis-basic-usage-example)
    - [Kredis within ActiveRecords](#kredis-within-activerecords)
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
  - [pg\_search](#pg_search)
    - [Install pg\_search](#install-pg_search)
    - [Setup multisearch](#setup-multisearch)
    - [Adding search attribute to model](#adding-search-attribute-to-model)
  - [scenic](#scenic)
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
    - [Factory Bot](#factory-bot)
      - [`factory_bot_rails` gem install](#factory_bot_rails-gem-install)
      - [Factory config for RSPEC](#factory-config-for-rspec)
      - [Factory creation](#factory-creation)
    - [Flipper](#flipper)
      - [Add Flipper to gemfile](#add-flipper-to-gemfile)
      - [run Flipper generator](#run-flipper-generator)
      - [Flipper Usage](#flipper-usage)
    - [SimpleCov](#simplecov)
    - [Audited](#audited)
      - [Install gem `audited`](#install-gem-audited)
      - [Setup `audited`](#setup-audited)
    - [Paranoia](#paranoia)
      - [Install gem `paranoia`](#install-gem-paranoia)
      - [Setup `paranoia`](#setup-paranoia)
  - [Create Private GEM](#create-private-gem)
    - [GEM generator](#gem-generator)
    - [GEM code implement](#gem-code-implement)
    - [How to test GEM code on development](#how-to-test-gem-code-on-development)
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
  - [Issues](#issues)
    - [Postgres - Fixing PG Error for new rails apps](#postgres---fixing-pg-error-for-new-rails-apps)
    - [cannot load such file -- coffee\_script](#cannot-load-such-file----coffee_script)
    - [Bundler running on wrong version](#bundler-running-on-wrong-version)
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

#### Configured with bootstrap an jsBuilding (esBuild)

```shell
rails new my-app --css=bootstrap --database=postgresql
```

#### Configured with postcss, postgres and esbuild

```rb
rails new lucasbarretto.com -d postgresql -j esbuild -c postcss -T
```

> `-d` set database as `postgresql`
> `-j` set javascript framework as `esbuild`
> `-c` set css framework as `postcss`
> `-T` remove default test framework

### Rails Database representation

`schema.rb`

Basic database representation

- It is a Ruby representation of your database; schema.rb is created by inspecting the database and expressing its structure using Ruby.
- It is database-agnostic (i.e. whether you use SQLite, PostgreSQL, MySQL or any other database that Rails supports, the syntax and structure will remain largely the same)

`structure.sql`

Mature database representation

- It allows for an exact copy of the database structure. This is important when working with a team, as well as if you need to rapidly generate a new database in production from a rails db:setup task.
- It allows preserving information of advanced database features. For example, if you are using PostgreSQL, it enables the use of views, materialized views, functions, constraints and so on.

#### Moving from schema to structure

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

### YAML Credentials

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

Model with polymorphic

```shell
rails g model Image position:integer description:string imageable:belongs_to{polymorphic}
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

### Hotwire

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

### ActiveStorage

> Rails depend on external applications to handle specific files like images, videos and PDF
>
>- `libvips` v8.6+ or `ImageMagick` for image analysis and transformations
>- `ffmpeg` v3.4+ for video previews and `ffprobe` for video/audio analysis
>- `poppler` or `muPDF` for PDF previews

#### ActiveStorage setup

In order to work properly it's also required to add to the gemfile a gem specifically to handle active_record variants

```gemfile
gem "image_processing", ">= 1.2"
```

```shell
bin/rails active_storage:install
bin/rails db:migrate
```

#### Configuring S3 for ActiveStorage

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

> Notice that for a saver use case it's better to use environment variable

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

#### Attaching Files to Records

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

#### Removing file

```rb
# Synchronously destroy the avatar and actual resource files.
user.avatar.purge

# Destroy the associated models and actual resource files async, via Active Job.
user.avatar.purge_later
```

To learn more about ActiveStorage, check here: <https://guides.rubyonrails.org/active_storage_overview.html>

#### Encrypted attachments

<https://alisepehri.medium.com/preview-for-amazon-s3-client-side-encrypted-active-storage-files-8e3ba55accb8>

#### variants

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

### Logger

#### Customized Logger

### Importmaps and Bootstraps without nodeJS

<https://dev.to/coorasse/rails-7-bootstrap-5-and-importmaps-without-nodejs-4g8>

- Create standard clean app
- Install `boostrap` gem and `sassc-rails`

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

Kredis is a higher level wrapper for your redis database which allow you to store more complex data-structure on your redis.

### Configuring Kredis

within your project run

```rb
bundle add kredis
rails kredis:install
```

after kredis is install it will create a YAML file `config/redis/shared.yml`

```mono
config
└── redis
    └── shared.yml
```

#### Custom or Additional configs

Additional configurations can be added under `config/redis/*.yml` and referenced when a type is created. For example, `Kredis.string("mystring", config: :strings)` would lookup `config/redis/strings.yml`.

### Kredis basic usage example

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
```

OR

```rb
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

### Kredis within ActiveRecords

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

## pg_search

### Install pg_search

```shell
bundle add pg_search
```

### Setup multisearch

```shell
rails g pg_search:migration:multisearch
rails db:migrate
```

### Adding search attribute to model

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

## scenic

<https://github.com/scenic-views/scenic>

> Handling SQL views within rails

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

### Factory Bot

#### `factory_bot_rails` gem install

Add factory_bot_rails to your Gemfile in :development, :test group

```rb
  group :development, :test do
    ...
    gem 'factory_bot_rails'
  end
```

then run `bundle`

#### Factory config for RSPEC

Create a file `spec/support/factory_bot.rb` and add the following configuration inside

```rb
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end
```

```shell
mkdir spec/support/
touch spec/support/factory_bot.rb
```

Uncomment the following line from `rails_helper.rb` so all files inside `spec/support` are loaded automatically by rspec

```rb
# Dir[Rails.root.join('spec', 'support', '**', '*.rb')].sort.each { |f| require f }
```

#### Factory creation

Add factories folder inside spec folder if it doesn’t already exist. You can then create factories inside `spec/factories` folder.

```shell
mkdir spec/factories/
```

Create your factory within `spec/factories` folder

**Example:**

```rb
FactoryBot.define do
  factory :user do
    first_name { 'John' }
    last_name  { 'Doe' }
    email { john@email_provider.com }
    mobile_number { 7860945310 }
  end
end
```

**Usage:**

```rb
RSpec.describe User, type: :model do
  let(:user) { build(:user) }
end
```

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

### Audited

This change is used to create audits for models in a very simple way

#### Install gem `audited`

```gemfile
# for rails 5 or above

gem "audited", "~> 5.0"

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

### Paranoia

Gem used to create soft delete for models

#### Install gem `paranoia`

```gemfile
# for rails 5 or above

gem "paranoia", "~> 2.2"
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

## Create Private GEM

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
