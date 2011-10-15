class State < ActiveRecord::Base
  belongs_to  :country
  has_many    :counties
  has_many    :codes

  validates :country, :associated => true, :presence => true 
end