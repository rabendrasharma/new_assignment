class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    # @questions = Question.all.includes(:answers)
  end
  def my_questions
    @questions = current_user.questions
  end
  def my_answers
    @answers = current_user.answers
  end
  def my_topics
    followee_ids = Folllow.where(follower_type: "Topic", follower_id: current_user.id ).pluck(:followee_id)
    @topics = Topic.where(id: followee_ids.flatten).pluck(:email).flatten if followee_ids.present?
  end
  def my_followings
    followee_ids = current_user.folllows.pluck(:followee_id)
    @followings = User.where(id: followee_ids.flatten).pluck(:email).flatten if followee_ids.present?
  end
end
