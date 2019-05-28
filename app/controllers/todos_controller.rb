require 'byebug'

class TodosController < ApplicationController
  before_action :find_todo, only: %i[update destroy]
  # add pundit rule

  def index
    @todos = Todo.all
  end

  def create
    Todo.create(todo_params)
    redirect_to root_path
  end

  def update
    redirect_to root_path
  end

  def destroy
    @todo.destroy
    redirect_to root_path
  end

  private

  def find_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params[:todo][:deadline] = create_deadline(params) if params[:todo]["deadline(3i)"]
    params.require(:todo).permit(:task, :priority, :user_id, :deadline)
  end

  def create_deadline(params)
    time = []
    i = 3
    until i.zero?
      time << params[:todo]["deadline(#{i}i)"]
      i -= 1
    end
    DateTime.strptime(time.join('-'), '%d-%m-%Y')
  end
end
