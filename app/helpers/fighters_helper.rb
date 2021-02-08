module FightersHelper
  def self.save_avatar(avatar_field)
    File.open(Rails.root.join("storage", avatar_field.original_filename), 'wb') do |file|
      file.write(avatar_field.read)
    end
  end

  def self.avatar_path(fighter_avatar)
    Rails.root.join("storage", fighter_avatar)
  end
end
