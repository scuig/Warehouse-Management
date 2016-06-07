class Order < ActiveRecord::Base
  belongs_to :location
  belongs_to :installer
  belongs_to :order_kind

  has_many :activity_orders
  has_many :activities, through: :activity_orders
end
