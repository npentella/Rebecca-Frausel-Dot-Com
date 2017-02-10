class Person < ApplicationRecord
	has_many :research_items
	has_many :publications
	has_many :educations

	validates :name, :title, presence: true
end
