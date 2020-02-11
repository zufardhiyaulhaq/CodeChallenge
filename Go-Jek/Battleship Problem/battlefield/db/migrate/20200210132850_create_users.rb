class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user
      t.string :email
      t.integer :map
      t.text :ship
      t.text :missile

      t.timestamps
    end
  end
end
