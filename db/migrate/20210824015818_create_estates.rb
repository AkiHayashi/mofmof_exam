class CreateEstates < ActiveRecord::Migration[5.2]
  def change
    create_table :estates do |t|
      t.string :name
      t.integer :rent
      t.text :adress
      t.float :age
      t.text :content

      t.timestamps
    end
  end
end
