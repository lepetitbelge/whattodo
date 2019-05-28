class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :task
      t.string :priority
      t.datetime :deadline
      t.boolean :done

      t.timestamps
    end
  end
end
