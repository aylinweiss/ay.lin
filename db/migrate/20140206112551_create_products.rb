class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.string :prise
      t.string :desciption

      t.timestamps
    end
  end
end
