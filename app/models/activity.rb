class Activity < ActiveRecord::Base
  has_many :activity_orders
  has_many :orders, through: :activity_orders
end
