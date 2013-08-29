class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessor :name, :surname, :webpage, :stackoverflow_page, :github_page, 
  				:bitbucket_page, :blog_page, :twitter_page, :name, :surname, 
  				:bio, :birthday, :gender
end
