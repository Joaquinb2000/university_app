class CourseStudent < ApplicationRecord
  belongs_to :user
  belongs_to :course
  validate :no_repeat

  def no_repeat
    if CourseStudent.find_by(user_id: user_id, course_id: course_id)
      errors.add(:student, "is already member of the course")
    end
  end
end
