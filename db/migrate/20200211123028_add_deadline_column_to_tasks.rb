class AddDeadlineColumnToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :deadline, :datetime, default: ''
    change_column_default :tasks, :status, 'Not finished'
  end
end
