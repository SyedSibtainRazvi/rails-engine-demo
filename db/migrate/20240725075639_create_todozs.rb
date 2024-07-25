class CreateTodozs < ActiveRecord::Migration[7.1]
  def change
    create_table :todozs do |t|
      t.string :name
      t.string :task

      t.timestamps
    end
  end
end
