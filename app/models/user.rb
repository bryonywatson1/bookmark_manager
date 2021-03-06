require 'bcrypt'

class User

  attr_reader :password
  attr_accessor :password_confirmation

  include DataMapper::Resource

  property :id, Serial
  property :username, String, required: true
  property :password_digest, Text

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  validates_confirmation_of :password,
    :message => "Password and confirmation password do not match."

  validates_format_of :username, :as => :email_address
  
  validates_uniqueness_of :username,
    :message => "User already signed up. Please login."

end
