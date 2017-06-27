class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show]
  before_action :require_login
  def index
  end

  def show
    @videos = Video.all
  end

  def new
    @post = Post.find(params[:id])
    @quiz = current_user.quizzes.new
    @quiz.answers.build
  end

  def create
    @quiz = current_user.quizzes.new(quiz_params)
    @quiz.save
    redirect_to @quiz
  end



  private
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def quiz_params
      params.require(:quiz).permit(answers_attributes: [:question, :correct_asnwer, :answer, :quiz_id, :id])
    end

end
