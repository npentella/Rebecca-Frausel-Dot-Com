class PeopleController < ApplicationController
	def index
		@person = Person.find(1)
	end
end
