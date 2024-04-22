class TodosController < ApplicationController
  def index 
    @todos = Todo.all
  end

  def addTodo
    todo = Todo.new(todo_params)
    todo.save
    redirect_to '/todos'
  end

  def deleteTodo 
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to '/todos'
  end

  def editTodo

  end

  private
  def todo_params
    params.permit(:text)
  end
end
