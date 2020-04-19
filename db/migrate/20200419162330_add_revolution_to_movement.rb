class AddRevolutionToMovement < ActiveRecord::Migration[6.0]
  def change
    add_reference :movements, :revolution, foreign_key: true
  end
end
