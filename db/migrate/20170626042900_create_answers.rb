class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.text :question
      t.string :correct_answer
      t.string :answer
      t.references :quizzes, foreign_key: true

      t.timestamps
    end
  end
end
