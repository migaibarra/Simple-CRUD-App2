class Car < ActiveRecord::Base
  validates :make, presence: true
  validates :model, presence: true
  validates :type, presence: true
  validates :top_speed, presence: true
  validates :horsepower, presence: true
end
