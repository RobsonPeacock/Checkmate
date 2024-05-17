class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new

    if @todo.save
      redirect_to :todos
    else
      render :new, status: :unprocessable_entity
    end
  end
end
