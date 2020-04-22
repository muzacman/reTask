class AddMovementToRevolution < ActiveRecord::Migration[6.0]
  def change
    add_reference :revolutions, :movement, foreign_key: true
  end
end
