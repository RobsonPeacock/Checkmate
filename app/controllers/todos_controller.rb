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

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])

    if @todo.update(todo_params)
      redirect_to :todos
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

    def todo_params
      params.require(:todo).permit(:content)
    end
end
