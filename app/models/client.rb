class Client < ActiveRecord::Base

  has_many :vehicles, through: :vehicle_drivers

  validates_presence_of :name, :p_o_c, :email, :phone, :location

  validates_numericality_of :phone
  validates_uniqueness_of :email ,:phone
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  validates_length_of :phone, is: 10

end
