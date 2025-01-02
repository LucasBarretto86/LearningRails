require 'sinatra/base'
require 'sinatra/activerecord'  # To connect to ActiveRecord
require './models/task'         # Require your Task model

class TasksController < Sinatra::Base
  helpers do
    def task_params
      params.require(:task).permit(:title, :description)
    end
  end

  get '/tasks' do
    @tasks = Task.all
    erb :'tasks/index'
  end

  post '/tasks' do
    task = Task.new(task_params)
    if task.save
      redirect '/tasks'
    else
      erb :'tasks/new'
    end
  end

  put '/tasks/:id' do
    task = Task.find(params[:id]) 
    if task.update(task_params) 
      redirect '/tasks'
    else
      erb :'tasks/edit'
    end
  end
end