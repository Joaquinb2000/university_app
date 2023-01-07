class Course < ApplicationRecord
  validates :name, :short_name ,:description, presence: true
  validates :name, length: {min: 5, max: 50}
  validates :short_name, length: {max: 10}
  validates :description, lenght: {max: 300}
end
