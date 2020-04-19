class CreateRevolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :revolutions do |t|
      t.text :repeater_vals
      t.integer :total_seconds
      t.integer :status

      t.timestamps
    end
  end
end
