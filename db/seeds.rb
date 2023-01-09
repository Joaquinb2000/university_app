# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


25.times do |num|
  name = "#{Faker::Educator.course_name}"
  while name.sub(/\d+/, "").length > 25
      name = "#{Faker::Educator.course_name}"
  end
  course = Course.new( name: name,
              short_name: name.sub(/\d+/, ""),
              description: Faker::Lorem.paragraphs(number: 5).join(" ")
            )
  course.save
end

40.times do |num|
  student = User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password")
  rand(5..10).times do
    course = Course.all.sample
    begin
      student.courses << course
    rescue => exception
      puts "Ooops"
    end
  end
end
