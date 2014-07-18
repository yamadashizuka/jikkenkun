class Jikken < ActiveRecord::Base
  has_many :buhins
  has_one  :syaryo
end
