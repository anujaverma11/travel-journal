require 'bcrypt'

class User < ActiveRecord::Base
  has_one :address
  has_many :journals

  # users.password_hash in the database is a :string
  include BCrypt

  validates :username, :presence => true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
