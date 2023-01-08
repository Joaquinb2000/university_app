class CreateCourseStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :course_students do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
