class CreateBooks < ActiveRecord::Migration[8.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :description
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
