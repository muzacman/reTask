class AddRepeaterNamesToMovement < ActiveRecord::Migration[6.0]
  def change
    add_column :movements, :repeater_names, :text
  end
end
