class ChangeTaskToStringInTodos < ActiveRecord::Migration[5.2]
  def change
    change_column :todos, :task, :string
  end
end
