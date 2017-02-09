class PeopleController < ApplicationController
	def index
		@person = People.find(1)
	end
end
