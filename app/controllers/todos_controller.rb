require 'byebug'

class TodosController < ApplicationController
  before_action :find_todo, only: %i[update destroy mark_as_done]
  # add pundit rule

  def index
    @todos = policy_scope(Todo).order(created_at: :desc)
  end

  def create
    @todo = Todo.create(todo_params)
    authorize @todo
    redirect_to root_path
  end

  def update
    @todo.update(todo_params)
    authorize @todo
    redirect_to root_path
  end

  def destroy
    @todo.destroy
    authorize @todo
    redirect_to root_path
  end

  private

  def find_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params[:todo][:deadline] = create_deadline(params) if params[:todo]["deadline(3i)"]
    params.require(:todo).permit(:task, :priority, :user_id, :deadline, :done)
  end

  def todo_update_params
    params.require(:todo).permit(:done)
  end

  def create_deadline(params)
    time = []
    i = 3
    3.times do
      time << params[:todo]["deadline(#{i}i)"]
      i -= 1
    end
    DateTime.strptime(time.join('-'), '%d-%m-%Y')
  end
end
