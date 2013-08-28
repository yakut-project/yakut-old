class TeachersController < ApplicationController
  before_action :authenticate_user!
  layout 'executive'

  def welcome
  end

end
