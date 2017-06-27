class AddRefToQuizzes < ActiveRecord::Migration[5.1]
  def change
    add_reference :quizzes, :user, foreign_key: true
    add_reference :answers, :quiz, foreign_key: true
  end
end
