class Address < ActiveRecord::Base
  # belongs_to  :addressable, :polymorphic => true
  belongs_to  :region
  has_many    :locations #, :as => :addressable
  has_many    :contacts, :through => :locations

  def street_address
    "#{street_number} #{street_name}"
  end

  def full_address
    "#{street_address}, #{city} #{region.try(:code)} #{postal_code}"
  end

  def street_name;  self[:street_name].upcase if self[:street_name]; end
  def city;         self[:city].upcase        if self[:city]; end
end
