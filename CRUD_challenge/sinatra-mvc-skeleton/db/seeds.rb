require 'faker'
 

20.times do |i|
	Note.create(title: Faker::Lorem.words(rand(1..10)).join(" "),
	content: Faker::Lorem.words(rand(1..100)).join(" "),
	grade: rand(1..10))
end