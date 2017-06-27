class RemoveCorrectAnswerFromAnswers < ActiveRecord::Migration[5.1]
  def change
    remove_column :answers, :correct_answer, :string
    remove_column :posts, :example, :text
    remove_column :posts, :sugested, :string
    remove_column :posts, :answer, :string
  end
end
