class CreateTodos < ActiveRecord::Migration[5.1]
  def change
  change_column :todos, :isCompleted, :boolean, default: false
    create_table :todos do |t|
      t.string :text
      t.boolean :isCompleted
      t.integer :project_id

      t.timestamps
    end
  end
end
