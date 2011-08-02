class Code < ActiveRecord::Base

  class << self
    def active; where(:active => true); end
    def inactive; where(:active => false); end
  end

  def value; changecase(:value); end
  
  private

  # Change the case of the attribute if the user wants to see ALL UPPER CASE
  def changecase(attribute)
    (StaticData::upcase && self[attribute]) ? self[attribute].upcase : self[attribute]
  end
end