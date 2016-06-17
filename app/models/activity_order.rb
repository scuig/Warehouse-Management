class ActivityOrder < ActiveRecord::Base
	belongs_to :activity
	belongs_to :order

	accepts_nested_attributes_for :activity, :reject_if => :all_blank
	accepts_nested_attributes_for :order, :reject_if => :all_blank

end
