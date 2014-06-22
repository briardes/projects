class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :start_date
      t.date :due_date
      t.boolean :completed
      t.text :notes

      t.timestamps
    end
  end
end
