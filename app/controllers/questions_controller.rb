class QuestionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :follow]
  def new
    @question = Question.new
  end

  def create
    topic_name = Question::TOPICS[params[:topic_id].to_i]
    question = current_user.questions.new(question: params[:question][:question])
    if question.save
      Topic.create(name: topic_name, topic_type: "Question", topic_id: question.id)
      redirect_to questions_path
    end
  end
  #For getting current_user only questions
  def index
    @questions = Question.includes(:answers)
    @questions = @questions.where.not(user_id: current_user.id) if current_user
  end

  def follow
    follow = Folllow.find_or_initialize_by(follower_type: params[:follower_type], followee_id: params[:followee_id], follower_id: current_user.id)
    follow.save
    redirect_to questions_path
  end
end
