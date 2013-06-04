class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name
  # attr_accessible :title, :body
  
  has_many :posts
  
  validates :first_name, :presence => true
  
  validates :last_name, :presence => true
  
  validates :email, format: {
                      with: /ccgs\.wa\.edu\.au$/,
                      message: "must be a school email address"
                    }
  
  def full_name
    first_name + " " + last_name
  end

  def gravatar_url
    "http://gravatar.com/avatar/#{Digest::MD5.hexdigest(email.strip.downcase)}?r=g&d=mm"
  end
end
