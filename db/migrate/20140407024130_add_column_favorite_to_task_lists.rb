class AddColumnFavoriteToTaskLists < ActiveRecord::Migration
  def change
    add_column :task_lists, :favorite, :boolean
  end
end
