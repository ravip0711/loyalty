class Employee < ActiveRecord::Base

  validates_presence_of :user_name, :passcode
  validates_uniqueness_of :user_name, :passcode
  validates :passcode, :numericality => {:only_integer => true}
  validates_length_of :passcode, is: 4

end
