class RemoveTitleFromTodos < ActiveRecord::Migration[5.2]
  def change
    remove_column :todos, :title, :string
  end
end
