class CreateFighters < ActiveRecord::Migration[6.0]
  def change
    create_table :fighters do |t|
      t.string :name
      t.integer :energy
      t.integer :strength

      t.timestamps
    end
  end
end
