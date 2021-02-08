class RemoveAvatarFromFighter < ActiveRecord::Migration[6.0]
  def up
    remove_column :fighters, :avatar
  end

  def down
    add_column :fighters, :avatar, :string
  end
end
