class CreateAsks < ActiveRecord::Migration[7.1]
  def change
    create_table :asks do |t|
      t.text :input
      t.text :output
      t.string :model_type
      t.integer :input_tokens
      t.integer :output_tokens
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
