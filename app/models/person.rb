class Person < ApplicationRecord
	has_many :research_items
	has_many :publications
	has_many :educations
	has_many :teachings

	validates :name, :title, presence: true
end
