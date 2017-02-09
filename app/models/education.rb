class Education < ApplicationRecord
	belongs_to :person

	validates :school, :concentration, presence: true
end
