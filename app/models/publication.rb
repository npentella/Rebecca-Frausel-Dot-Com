class Publication < ApplicationRecord
	belongs_to :person

	validates :title, :location, :date, presence: true
end
