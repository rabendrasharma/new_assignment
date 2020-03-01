class Topic < ApplicationRecord
  belongs_to :topic, polymorphic: true
  has_many :folllows, as: :follower
end
