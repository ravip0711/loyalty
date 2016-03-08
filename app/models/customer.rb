class Customer < ActiveRecord::Base
  has_many :points

  validates_presence_of :first_name, :last_name, :phone, :email, :zip_code
  validates_uniqueness_of :phone, :email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :phone, :zip_code, :numericality => {:only_integer => true}
  validates_length_of :phone, is: 10
  validates_length_of :zip_code, is: 5
end
