class AddMovementToTask < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :movement, foreign_key: true
  end
end
