require 'bcrypt'

class Logindetail < ActiveRecord::Base

  belongs_to :user
  validates :username, presence: true
  validates :password, presence: true

  # users.password_hash in the database is a :string
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
