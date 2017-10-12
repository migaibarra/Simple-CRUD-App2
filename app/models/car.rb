class Car < ActiveRecord::Base
  validates :make, presence: true
  validates :model, presence: true
  validates :category, presence: true
  validates :top_speed, presence: true
  validates :horsepower, presence: true

  belongs_to :user
end
