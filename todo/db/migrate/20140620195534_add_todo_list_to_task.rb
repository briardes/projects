class AddTodoListToTask < ActiveRecord::Migration
  def change
    add_reference :todo_lists, :todo_list_id, :tasks, :index, true
  end
end
