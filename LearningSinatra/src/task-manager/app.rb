require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/reloader' if development?

set :database, { adapter: 'sqlite3', database: 'db/tasks_manager.sqlite3' }

# Models
require './models/task'

# Routes will be defined here
