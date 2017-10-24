class TodosController < ApplicationController
  def new
    @todos = Todo.all
    @projects = Project.all
  end
  def create
  @todo = Todo.new(article_params)
  @todo.save
  redirect_to @todo
end
def show
  @todos = Todo.all
  @projects = Project.all
end
private
  def article_params
    params.require(:todo).permit(:text, :project_id)
  end
end
