class CreateWorlds < ActiveRecord::Migration[6.0]
  def change
    create_table :worlds do |t|
      t.string :name
      t.integer :map
      t.text :player

      t.timestamps
    end
  end
end
