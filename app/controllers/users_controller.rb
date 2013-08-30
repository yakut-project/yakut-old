class UsersController < ApplicationController
	before_action :authenticate_any!
	def welcome
	end

	def show
		@user = User.find params[:id]
		@comments = Comment.where user: @user
		@comment = Comment.new
	end
end
