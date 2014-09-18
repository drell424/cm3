class CreateDealers < ActiveRecord::Migration
  def change
    create_table :dealers do |t|
      t.string :name
      t.string :email
      t.string :company
      t.string :website
      t.string :phone

      t.timestamps
    end
  end
end
