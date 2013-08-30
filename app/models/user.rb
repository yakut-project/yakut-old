class User < ActiveRecord::Base
  extend Enumerize
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enumerize :gender, in: { male: 1, female: 2, not_specified: 3 }
  # Example creation of User with gender:
  # new_user = User.create(email: 'asd@asd.com', password: 'password', gender: :male)
  
  # Example usage for checking gender:
  # new_user.gender.male? (returns true or false)

  validates :name, presence: true
  validates :surname, presence: true
  validates :gender, presence:true
  validates :bio, length: { maximum: 500 }
  validates :birthday, presence: true

  def github_url
    "https://github.com/#{github}" if github
  end

  def stackoverflow_url
    "https://stackoverflow.com/#{stackoverflow}" if stackoverflow
  end

  def bitbucket_url
    "https://bitbucket.org/#{bitbucket}" if bitbucket
  end

  def twitter_url
    "https://twitter.com/#{twitter}" if twitter
  end
end
