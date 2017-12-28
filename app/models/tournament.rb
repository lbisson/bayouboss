class Tournament < ApplicationRecord
  belongs_to :user
  has_many :rounds
  
  default_scope -> { order(event_start: :asc) }
  validates :user_id, presence: true
  validates :name, presence: true
  validates :num_rounds, presence: true, numericality: { other_than: 0}
end
