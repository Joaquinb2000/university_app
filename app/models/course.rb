class Course < ApplicationRecord
  validates :name, :short_name ,:description, presence: true
  validates :name, length: {minimum: 5, maximum: 50}
  validates :short_name, length: {maximum: 10}
  validates :description, length: {maximum: 300}
end
