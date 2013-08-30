class AdminsController < ApplicationController
  before_action :authenticate_admin!
  layout 'executive'
  def welcome
  end
  def userlist
  end
end
