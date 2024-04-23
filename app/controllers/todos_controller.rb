# frozen_string_literal: true

# TodosController class manages all the CRUD operations for Todo items.
# This controller handles listing todos, creating new todos,
# editing existing todos, and deleting them.
class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def add_todo
    todo = Todo.new(todo_params)
    todo.save
    redirect_to '/todos'
  end

  def delete_todo
    todo = Todo.find(params[:id])
    todo.destroy
    redirect_to '/todos'
  end

  def edit_todo; end

  private

  def todo_params
    params.permit(:text)
  end
end
