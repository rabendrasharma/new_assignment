class AnswersController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    current_user.answers.create(answer: params[:answer][:answer], question_id: params[:answer][:question_id])
    redirect_to questions_path
  end
end
