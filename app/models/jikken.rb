class Jikken < ActiveRecord::Base
  has_many :buhins
  has_many :syaryos
end
