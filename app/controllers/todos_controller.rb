class TodosController < ApplicationController

  def index
   @todo = Todo.all
  end
  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(params[:todo])
    @todo.save
    redirect_to todos_path
  end

  def show
    Todo.find(params[:id])
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update(todo_params)
    redirect_to todos_path
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to todos_path
  end

  def complete
    @todo = Todo.find(params[:id])
    :completed == true
    @todo.save
    redirect_to todos_path

  end

  def todos
@todos = Todos.all
  end
  private
  def todo_params
    params.require(:todo).permit(:description, :completed)
  end
end
