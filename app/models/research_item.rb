class ResearchItem < ApplicationRecord
	belongs_to :person

	validates :person_id, :title, presence: true
end
