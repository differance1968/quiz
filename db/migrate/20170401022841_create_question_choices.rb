class CreateQuestionChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :question_choices do |t|
      t.references :question_item, foreign_key: true
      t.text :content
      t.integer :value
      t.integer :correct

      t.timestamps
    end
  end
end
