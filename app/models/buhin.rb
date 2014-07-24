# == Schema Information
#
# Table name: buhins
#
#  id         :integer          not null, primary key
#  hinmei     :string(255)
#  hinban     :string(255)
#  nouhin_sya :string(255)
#  nouhin_day :datetime
#  tantou     :string(255)
#  kosu       :integer
#  jikken_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Buhin < ActiveRecord::Base
  belongs_to :jikken
end
