class Activity < ActiveRecord::Base
  has_many :activities_orders
  has_many :orders, through: :activities_orders
end
