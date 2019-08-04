class CreateThings < ActiveRecord::Migration[5.2]
  def change
    create_table :things do |t|
      t.text :description
      t.string :author
      t.timestamps
    end
  end
end
