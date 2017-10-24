class WelcomeController < ApplicationController
  def index
    @todos = Todo.all
    @projects = Project.all
  end
end
