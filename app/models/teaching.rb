class Teaching < ApplicationRecord
	belongs_to :person

	validates :subject, :school, presence: true
end
