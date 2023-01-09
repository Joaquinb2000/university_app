class Course < ApplicationRecord
  validates :name, :short_name ,:description, presence: true
  validates :name, length: {minimum: 5, maximum: 50}
  validates :short_name, length: {maximum: 25}
  validates :description, length: {maximum: 500}

  has_many :course_students, dependent: :destroy
  has_many :users, through: :course_students
end
