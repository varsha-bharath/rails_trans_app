class Client < ActiveRecord::Base

  has_many :vehicles, through: :vehicle_drivers

  validates_presence_of :name, :p_o_c, :email, :phone, :location

  validates_numericality_of :phone

  validates_length_of :phone, maximum: 10, minimum: 10

end
