class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.decimal :target
      t.date :release
      t.string :website

      t.timestamps
    end
  end
end
