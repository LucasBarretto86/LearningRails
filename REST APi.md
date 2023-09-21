# Learning RAILS

## Rest API

In Rails 7, just like in previous versions, you can build RESTful APIs using Rails conventions. David Heinemeier Hansson (DHH), the creator of Ruby on Rails, advocates for convention over configuration, so let's follow the Rails way of building a RESTful API.

We'll cover the key concepts of building a RESTful API in Rails 7, including routes, controllers, and JSON responses, and I'll provide examples along the way.

### Setting Up Your Rails Application

First, make sure you have Rails 7 installed. You can create a new Rails application with the following command:

```sh
rails new your_api_name --api
```

> The --api flag indicates that you're creating an API-only application.

### Routes

In Rails, routes are defined in the config/routes.rb file. For a RESTful API, you can use the resources method to define routes for your resources. Here's an example for a users resource:

```rb
# config/routes.rb
Rails.application.routes.draw do
  resources :users
end
```

This will generate standard RESTful routes for your users resource, including routes for creating, reading, updating, and deleting users.

### Controllers

Controllers handle incoming HTTP requests and return appropriate responses. In Rails, controllers are typically named in plural form and inherit from ApplicationController. Let's create a UsersController as an example:

```mono
rails generate controller Users
```

Now, in the `app/controllers/users_controller.rb` file, you can define actions to handle API requests. Here's an example of how you might implement a UsersController:

```rb
# app/controllers/users_controller.rb
class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    head :no_content
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
```

### JSON Responses

In a Rails API, you typically return JSON responses. As shown in the controller examples above, you can use the render method to generate JSON responses. The status option can be used to set the HTTP response status code.

### Testing

It's essential to write tests for your API endpoints. Rails provides testing frameworks like RSpec and MiniTest. Here's an example of an RSpec test for the UsersController:

```rb
# spec/controllers/users_controller_spec.rb
require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  # Your test cases go here
end
```

You can use RSpec's built-in methods to write tests for your controller actions, ensuring they return the correct JSON responses and handle different scenarios correctly.
