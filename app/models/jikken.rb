class Jikken < ActiveRecord::Base
  has_many :Buhins
  has_one  :Syaryo
end
