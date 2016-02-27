class Employee < ActiveRecord::Base

  validates_presence_of :user_name, :password
  validates_uniqueness_of :user_name
  validates :password, :numericality => {:only_integer => true}
  validates_length_of :password, minimum: 4

  has_secure_password

end
