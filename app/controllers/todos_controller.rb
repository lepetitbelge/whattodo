require 'byebug'

class TodosController < ApplicationController
  before_action :set_todo, only: %i[update destroy mark_as_done]
  # add pundit rule

  def index
    @todos = policy_scope(Todo).order(deadline: :asc)
  end

  def create
    @todo = Todo.create(todo_params)
    authorize @todo

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { render content_type: 'text/javascript' }
    end
  end

  def update
    authorize @todo
    @todo.update(todo_params)

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { render content_type: 'text/javascript' }
    end
  end

  def destroy
    @todo.destroy
    authorize @todo

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { render content_type: 'text/javascript' }
    end
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params[:todo][:deadline] = create_deadline(params) if params[:todo]["deadline(1i)"]
    params.require(:todo).permit(:task, :priority, :user_id, :deadline, :done)
  end

  def todo_update_params
    params.require(:todo).permit(:done)
  end

  def create_deadline(params)
    DateTime.new params[:todo]["deadline(1i)"].to_i, params[:todo]["deadline(2i)"].to_i, params[:todo]["deadline(3i)"].to_i
  end
end
