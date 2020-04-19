class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :text_build
      t.string :link
      t.integer :type
      t.integer :order_number

      t.timestamps
    end
  end
end
