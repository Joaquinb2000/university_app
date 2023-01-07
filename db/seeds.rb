# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


5.times do |num|
  name = "#{Faker::University.name} - #{rand(10000)}"
  course = Course.new( name: name,
              short_name: name.sub(/ -*/, ""),
              description: Faker::Lorem.paragraphs(number: 5)
            )
  course.save
end
