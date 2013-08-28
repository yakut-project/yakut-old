class UsersController < ApplicationController
	before_action :authenticate_user!
	def welcome
	end
end
