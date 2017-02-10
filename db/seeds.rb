# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

becca = Person.create(
	{name: "Rebecca Frausel, M.A.",
		title: "PhD Candidate, Univ. of Chicago",
		main_description: Faker::HarryPotter.quote,
		personal_bio: Faker::HarryPotter.quote,
		teaching_philosophy: Faker::HarryPotter.quote
		})

5.times do
	ResearchItem.create(
	{
		title: Faker::HarryPotter.book,
		person: becca,
		collaborators: "#{Faker::HarryPotter.character}, #{Faker::HarryPotter.character}, #{Faker::HarryPotter.character}",
		description: Faker::HarryPotter.quote
		})
end

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

3.times do
	Education.create({
		school: Faker::Educator.university,
		person: becca,
		degree: Faker::Name.suffix,
		concentration: Faker::Commerce.department,
		start_date: Faker::Date.backward(1000),
		end_date: Faker::Date.backward(100),
		advisors: "#{Faker::GameOfThrones.character}, #{Faker::GameOfThrones.character}, #{Faker::GameOfThrones.character}",
		honors: "#{Faker::GameOfThrones.dragon}, #{Faker::GameOfThrones.dragon}",
		extracurriculars: Faker::Team.sport
		})
end

3.times do
	Teaching.create({
		person: becca,
		subject: Faker::Commerce.department,
		school: Faker::GameOfThrones.city,
		description: Faker::HarryPotter.quote
		})
end