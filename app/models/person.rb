class Person < ApplicationRecord
	has_many :research_items, :publications

	validates :name, :title, presence: true
end
