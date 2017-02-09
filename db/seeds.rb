# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# becca = Person.create(
# 	{name: "Rebecca Frausel, M.A.",
# 		title: "PhD Candidate, Univ. of Chicago",
# 		main_description: Faker::HarryPotter.quote,
# 		personal_bio: Faker::HarryPotter.quote,
# 		teaching_philosophy: Faker::HarryPotter.quote
# 		})

# 5.times do
# 	ResearchItem.create(
# 	{
# 		title: Faker::HarryPotter.book,
# 		person: becca,
# 		collaborators: "#{Faker::HarryPotter.character}, #{Faker::HarryPotter.character}, #{Faker::HarryPotter.character}",
# 		description: Faker::HarryPotter.quote
# 		})
# end

becca = Person.find(1)

5.times do
	Publication.create({
		title: Faker::HarryPotter.book,
		person: becca,
		collaborators: "#{Faker::HarryPotter.character}, #{Faker::HarryPotter.character}",
		location: Faker::HarryPotter.location,
		date: Faker::Date.backward(1000),
		description: Faker::HarryPotter.quote
		})
end