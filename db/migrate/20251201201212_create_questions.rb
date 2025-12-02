class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|

      t.text :content
      t.text :name
      t.text :system_prompt


      t.timestamps
    end
  end
end
