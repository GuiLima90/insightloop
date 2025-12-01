class CreateInsights < ActiveRecord::Migration[7.1]
  def change
    create_table :insights do |t|
      t.text :content
      t.references :ask, null: false, foreign_key: true

      t.timestamps
    end
  end
end
