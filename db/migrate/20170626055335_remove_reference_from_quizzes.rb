class RemoveReferenceFromQuizzes < ActiveRecord::Migration[5.1]
  def change
    remove_reference :quizzes, :users, index:true, foreign_key: true
  end
end
