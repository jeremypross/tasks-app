class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.text :task
      t.text :author

      t.timestamps
    end
  end
end
