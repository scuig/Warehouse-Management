class Order < ActiveRecord::Base
  belongs_to :location
  delegate :location_name, to: :location, prefix: true, :allow_nil => true

  belongs_to :installer
  delegate :employee_key, to: :installer, prefix: true, :allow_nil => true

  belongs_to :classification
  delegate :name, to: :classification, prefix: true, :allow_nil => true

  belongs_to :order_kind
  belongs_to :user


  has_many :activities_orders
  has_many :activities, through: :activities_orders

  accepts_nested_attributes_for :activities_orders,
          :reject_if => :all_blank,
          :allow_destroy => true
 accepts_nested_attributes_for :activities

end
