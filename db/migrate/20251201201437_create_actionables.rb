class CreateActionables < ActiveRecord::Migration[7.1]
  def change
    create_table :actionables do |t|
      t.text :content
      t.references :insight, null: false, foreign_key: true

      t.timestamps
    end
  end
end
