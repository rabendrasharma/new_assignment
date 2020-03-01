class Question < ApplicationRecord
  belongs_to :user
  has_one :topic, as: :topic
  has_many :answers
  TOPICS = {1 => "Science", 2 => "Social", 3 => "History", 4 => "Computer Science"}
end
