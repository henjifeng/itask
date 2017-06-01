class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name, limit: 30, default: "", null: false
      t.text :description, default: "", null: false
      t.string :homepage, limit: 60, default: ""
      t.boolean :is_public, default: true, null: false
      t.integer :parent_id
      t.integer :projects_count, default: 0
      t.timestamps
    end
  end
end
