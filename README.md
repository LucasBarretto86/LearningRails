# Ruby Language Learning

- [Ruby Language Learning](#ruby-language-learning)
  - [Rails](#rails)
    - [Creating new Rails App](#creating-new-rails-app)
      - [For older Rails versions](#for-older-rails-versions)
      - [Configured as API app](#configured-as-api-app)
      - [Configured with React lilbs (Rails 6 or above)](#configured-with-react-lilbs-rails-6-or-above)
    - [Dependecies setup](#dependecies-setup)
      - [Webpacker](#webpacker)
    - [Generators](#generators)
      - [Models generator](#models-generator)
    - [Implentations and snippets quick access](#implentations-and-snippets-quick-access)
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
  - [Webpack](#webpack)
  - [Rubocop](#rubocop)
  - [Brakeman](#brakeman)
  - [Foreman](#foreman)
  - [React](#react)
    - [Installing Rspec](#installing-rspec)
  - [Apollo](#apollo)
  - [MailCatcher](#mailcatcher)
  - [Gists](#gists)
    - [Private](#private)
    - [Public](#public)
  - [References](#references)

## Rails

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

#### Configured with React lilbs (Rails 6 or above)

```shell
rails new my-app --webpack=react --database=postgresql
```

### Dependecies setup

#### Webpacker

With the new app folder

Add Webpacker (DEPRECATED USED ONLY FOR Rails 5 or below)

```shell
rails  webpacker:install
```

Adding Stimulus

```shell
rails  webpacker:install:stimulus
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

### Implentations and snippets quick access

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

## Webpack

with application directory

```shell
./bin/webpack-dev-server
```

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

Custom config:

```yml
require:
  - rubocop-performance
  - rubocop-rails
  - rubocop-minitest


AllCops:
  TargetRubyVersion: 3.0
  # RuboCop has a bunch of cops enabled by default. This setting tells RuboCop
  # to ignore them, so only the ones explicitly set in this file are enabled.
  DisabledByDefault: true
  SuggestExtensions: false
  Exclude:
    - 'db/**/*'
    - 'config/**/*'
    - 'script/**/*'
    - 'bin/**/*'
    - 'node_modules/**/*'
    - '*'

Performance:
  Exclude:
    - '**/test/**/*'

# Prefer assert_not over assert !
Rails/AssertNot:
  Include:
    - '**/test/**/*'

# Prefer assert_not_x over refute_x
Rails/RefuteMethods:
  Include:
    - '**/test/**/*'

Rails/IndexBy:
  Enabled: true

Rails/IndexWith:
  Enabled: true

# Prefer &&/|| over and/or.
Style/AndOr:
  Enabled: true

# Align `when` with `case`.
Layout/CaseIndentation:
  Enabled: true

Layout/ClosingHeredocIndentation:
  Enabled: true

Layout/ClosingParenthesisIndentation:
  Enabled: true

# Align comments with method definitions.
Layout/CommentIndentation:
  Enabled: true

Layout/ElseAlignment:
  Enabled: true

# Align `end` with the matching keyword or starting expression except for
# assignments, where it should be aligned with the LHS.
Layout/EndAlignment:
  Enabled: true
  EnforcedStyleAlignWith: variable
  AutoCorrect: true

Layout/EndOfLine:
  Enabled: true

Layout/EmptyLineAfterMagicComment:
  Enabled: true

Layout/EmptyLinesAroundAccessModifier:
  Enabled: true
  EnforcedStyle: only_before

Layout/EmptyLinesAroundBlockBody:
  Enabled: true

# In a regular class definition, no empty lines around the body.
Layout/EmptyLinesAroundClassBody:
  Enabled: true

# In a regular method definition, no empty lines around the body.
Layout/EmptyLinesAroundMethodBody:
  Enabled: true

# In a regular module definition, no empty lines around the body.
Layout/EmptyLinesAroundModuleBody:
  Enabled: true

# Use Ruby >= 1.9 syntax for hashes. Prefer { a: :b } over { :a => :b }.
Style/HashSyntax:
  Enabled: true

# Method definitions after `private` or `protected` isolated calls need one
# extra level of indentation.
Layout/IndentationConsistency:
  Enabled: true
  EnforcedStyle: indented_internal_methods

# Two spaces, no tabs (for indentation).
Layout/IndentationWidth:
  Enabled: true

Layout/LeadingCommentSpace:
  Enabled: true

Layout/SpaceAfterColon:
  Enabled: true

Layout/SpaceAfterComma:
  Enabled: true

Layout/SpaceAfterSemicolon:
  Enabled: true

Layout/SpaceAroundEqualsInParameterDefault:
  Enabled: true

Layout/SpaceAroundKeyword:
  Enabled: true

Layout/SpaceAroundOperators:
  Enabled: true

Layout/SpaceBeforeComma:
  Enabled: true

Layout/SpaceBeforeComment:
  Enabled: true

Layout/SpaceBeforeFirstArg:
  Enabled: true

Style/DefWithParentheses:
  Enabled: true

# Defining a method with parameters needs parentheses.
Style/MethodDefParentheses:
  Enabled: true

Style/ExplicitBlockArgument:
  Enabled: true

Style/FrozenStringLiteralComment:
  Enabled: true
  EnforcedStyle: always
  Exclude:
    - 'db/migrate/**/*.rb'

Style/MapToHash:
  Enabled: true

Style/RedundantFreeze:
  Enabled: true

# Use `foo {}` not `foo{}`.
Layout/SpaceBeforeBlockBraces:
  Enabled: true

# Use `foo { bar }` not `foo {bar}`.
Layout/SpaceInsideBlockBraces:
  Enabled: true
  EnforcedStyleForEmptyBraces: space

# Use `{ a: 1 }` not `{a:1}`.
Layout/SpaceInsideHashLiteralBraces:
  Enabled: true

Layout/SpaceInsideParens:
  Enabled: true

# Check quotes usage according to lint rule below.
Style/StringLiterals:
  Enabled: true
  EnforcedStyle: double_quotes

# Detect hard tabs, no hard tabs.
Layout/IndentationStyle:
  Enabled: true

# Empty lines should not have any spaces.
Layout/TrailingEmptyLines:
  Enabled: true

# No trailing whitespace.
Layout/TrailingWhitespace:
  Enabled: true

# Use quotes for string literals when they are enough.
Style/RedundantPercentQ:
  Enabled: true

Lint/AmbiguousOperator:
  Enabled: true

Lint/AmbiguousRegexpLiteral:
  Enabled: true

Lint/DuplicateRequire:
  Enabled: true

Lint/ErbNewArguments:
  Enabled: true

# Use my_method(my_arg) not my_method( my_arg ) or my_method my_arg.
Lint/RequireParentheses:
  Enabled: true

Lint/RedundantStringCoercion:
  Enabled: true

Lint/UriEscapeUnescape:
  Enabled: true

Lint/UselessAssignment:
  Enabled: true

Lint/DeprecatedClassMethods:
  Enabled: true

Style/ParenthesesAroundCondition:
  Enabled: true

Style/HashTransformKeys:
  Enabled: true

Style/HashTransformValues:
  Enabled: true

Style/RedundantBegin:
  Enabled: true

Style/RedundantReturn:
  Enabled: true
  AllowMultipleReturnValues: true

Style/RedundantRegexpEscape:
  Enabled: true

Style/Semicolon:
  Enabled: true
  AllowAsExpressionSeparator: true

# Prefer Foo.method over Foo::method
Style/ColonMethodCall:
  Enabled: true

Style/TrivialAccessors:
  Enabled: true

Performance/BindCall:
  Enabled: true

Performance/FlatMap:
  Enabled: true

Performance/MapCompact:
  Enabled: true

Performance/SelectMap:
  Enabled: true

Performance/RedundantMerge:
  Enabled: true

Performance/StartWith:
  Enabled: true

Performance/EndWith:
  Enabled: true

Performance/RegexpMatch:
  Enabled: true

Performance/ReverseEach:
  Enabled: true

Performance/StringReplacement:
  Enabled: true

Performance/UnfreezeString:
  Enabled: true

Performance/DeletePrefix:
  Enabled: true

Performance/DeleteSuffix:
  Enabled: true

Lint/SymbolConversion:
  Enabled: true

Style/StringLiteralsInInterpolation:
  Enabled: true
  EnforcedStyle: double_quotes

Style/RescueStandardError:
  Enabled: true

Style/RedundantSelf:
  Enabled: true

Style/TrailingCommaInHashLiteral:
  Enabled: true

Layout/SpaceInsidePercentLiteralDelimiters:
  Enabled: true

Lint/LiteralInInterpolation:
  Enabled: true

Rails/PluralizationGrammar:
  Enabled: true

Style/RaiseArgs:
  Enabled: true

Style/HashEachMethods:
  Enabled: true

Rails/Blank:
  Enabled: true

Rails/Present:
  Enabled: true

Layout/EmptyComment:
  Enabled: true

Layout/SpaceInsideArrayLiteralBrackets:
  Enabled: true

Performance/Count:
  Enabled: true

Rails/LinkToBlank:
  Enabled: true

Style/BlockDelimiters:
  Enabled: true

Style/MultilineWhenThen:
  Enabled: true

Style/TrailingCommaInArrayLiteral:
  Enabled: true

Performance/Detect:
  Enabled: true

Rails/FindEach:
  Enabled: true

Style/NegatedIfElseCondition:
  Enabled: true

Style/RedundantFetchBlock:
  Enabled: true

Rails/Presence:
  Enabled: true

Style/InverseMethods:
  Enabled: true

Performance/CompareWithBlock:
  Enabled: true

Style/EmptyCaseCondition:
  Enabled: true

Style/RedundantCondition:
  Enabled: true

Layout/SpaceAfterNot:
  Enabled: true

Lint/DuplicateCaseCondition:
  Enabled: true

Lint/DuplicateElsifCondition:
  Enabled: true

Lint/EmptyBlock:
  Enabled: true

Lint/EmptyFile:
  Enabled: true

Lint/RedundantWithIndex:
  Enabled: true

Rails/ActiveRecordCallbacksOrder:
  Enabled: true

Rails/Pluck:
  Enabled: True

Style/SymbolLiteral:
  Enabled: True

Minitest/UnreachableAssertion:
  Enabled: true
```

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

## React

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

Generate Rspect required files

```shell
rails g rspec:install
```

## Apollo

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

### Public

- [RubyOnRails Snippets](https://gist.github.com/LucasBarretto86/06abfb8a034fc43be29df34ebeb85bab)
- [Local fonts in `asset_path` and CORS adjustment](https://gist.github.com/LucasBarretto86/e1699059e596b7ebffb5b40ac6909d6b)

## References

- [Foreman](https://www.theforeman.org/introduction.html)
- [Rubocop](https://docs.rubocop.org/rubocop/installation.html)
- [brakeman.org](https://brakemanscanner.org/)
- [Create Rails App with GraphQL](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-ruby-on-rails-graphql-ap>)
