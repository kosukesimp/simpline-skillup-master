class RemoveReferenceFromAnswers < ActiveRecord::Migration[5.1]
  def change
    remove_reference :answers, :quizzes, index:true, foreign_key: true
  end
end
