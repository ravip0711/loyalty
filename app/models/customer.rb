class Customer < ActiveRecord::Base
  has_many :points

  validates_presence_of :first_name, :last_name, :phone, :email, :zip_code
  validates_uniqueness_of :phone, :email
  validates :phone, numericality: { only_integer: true }
  validates_length_of :phone, is: 10


end
