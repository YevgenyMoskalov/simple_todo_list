class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string  :description, null: false, default: ''
      t.string  :status,      null: false, default: '' # Not finished, Completed, Failed
      t.boolean :deleted,     null: false, default: false
      t.integer :project_id
      t.timestamps
    end
  end
end
