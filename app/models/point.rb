class Point < ActiveRecord::Base
  belongs_to :customer

  validates_presence_of :point_total
  validates :point_total, :numericality => {:only_integer => true}
  validates_length_of :point_total, minimum: 1, maximum: 1000
end
