class Person < ApplicationRecord
	has_many :research_items

	validates :name, :title, presence: true
end
