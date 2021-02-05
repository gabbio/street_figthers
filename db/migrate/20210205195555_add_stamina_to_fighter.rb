class AddStaminaToFighter < ActiveRecord::Migration[6.0]
  def change
    add_column :fighters, :stamina, :integer
  end
end
