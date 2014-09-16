class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :description
      t.string :budget
      t.string :timeframe
      t.string :zip

      t.timestamps
    end
  end
end
