class AddTaskListIdToTask < ActiveRecord::Migration
  def change
    add_reference :tasks, :todo_list, index: true
  end
end
