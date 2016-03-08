class Employee < ActiveRecord::Base

	has_secure_password

  validates_presence_of :user_name, :password, :password_confirmation, :passcode
  validates_uniqueness_of :user_name, :passcode
  validates :passcode, :numericality => {:only_integer => true}
  validates_length_of :passcode, is: 4
  validates_length_of :user_name, :password, minimum: 4
end
