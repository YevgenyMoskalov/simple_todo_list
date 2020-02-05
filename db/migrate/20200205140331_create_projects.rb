class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string  :name,    null: false, default: ''
      t.boolean :deleted, null: false, default: false
      t.integer :user_id

      t.timestamps
    end
  end
end
