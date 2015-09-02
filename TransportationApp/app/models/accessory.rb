class Accessory < ActiveRecord::Base
	belongs_to :vehicle
	validates_presence_of :name,:cost,:model

end
