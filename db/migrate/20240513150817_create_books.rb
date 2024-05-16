class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
