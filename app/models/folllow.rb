class Folllow < ApplicationRecord
  belongs_to :follower, polymorphic: true
end
