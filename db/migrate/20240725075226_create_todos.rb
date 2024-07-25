class CreateTodos < ActiveRecord::Migration[7.1]
  def change
    create_table :todoos do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
