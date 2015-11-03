class Customer < ActiveRecord::Base

  validates_presence_of :first_name, :last_name, :phone, :email, :zip_code
  validates_uniqueness_of :phone, :email

end
