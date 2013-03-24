class Sale < ActiveRecord::Base
  attr_accessible :charge_price, :color, :customer_city,
    :customer_name, :references, :car, :created_at, :updated_at
  belongs_to :car
end
