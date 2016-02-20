class Customer < ActiveRecord::Base
  has_many :points

  validates_presence_of :first_name, :last_name, :phone, :email, :zip_code
  validates_uniqueness_of :phone, :email
  validates :phone, :zip_code, :numericality => {:only_integer => true}
  validates_length_of :phone, is: 10
  validates_length_of :zip_code, is: 5
end
