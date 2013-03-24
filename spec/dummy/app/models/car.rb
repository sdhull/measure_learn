class Car < ActiveRecord::Base
  self.inheritance_column = nil
  attr_accessible :base_msrp, :doors, :type, :name
  has_many :sales
end
