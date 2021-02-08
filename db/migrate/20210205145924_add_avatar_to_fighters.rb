class AddAvatarToFighters < ActiveRecord::Migration[6.0]
  def change
    add_column :fighters, :avatar, :string
  end
end
