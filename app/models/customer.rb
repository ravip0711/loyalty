class Customer < ActiveRecord::Base
  has_many :points

  validates_presence_of :first_name, :last_name, :phone, :email, :zip_code
  validates_uniqueness_of :phone, :email

end
