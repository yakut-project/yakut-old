class TeachersController < ApplicationController
  before_action :authenticate_teacher!
  layout 'executive'

  def welcome
  end

end
