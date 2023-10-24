class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.text :content

      t.timestamps
    end
  end
end
