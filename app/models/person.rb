class Person < ApplicationRecord
	has_many :research_items
	has_many :publications

	validates :name, :title, presence: true
end
