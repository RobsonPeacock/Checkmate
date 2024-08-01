class TodosController < ApplicationController
  before_action :set_list
  before_action :set_todo, only: [:edit, :update, :destroy]

  def index
    @todos = @list.todos
  end

  def new
    @todo = @list.todos.build
  end

  def create
    @todo = @list.todos.build(todo_params)

    if @todo.save
      redirect_to list_todos_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @todo.update(todo_params)
      redirect_to list_todos_path(@list)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @todo.destroy

    redirect_to list_todos_path(@list), status: :see_other
  end

  private

    def todo_params
      params.require(:todo).permit(:content)
    end

    def set_list
      @list = List.find(params[:list_id])
    end

    def set_todo
      @todo = @list.todos.find(params[:id])
    end
end
