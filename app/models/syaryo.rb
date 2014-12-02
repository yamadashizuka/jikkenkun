# == Schema Information
#
# Table name: syaryos
#
#  id            :integer          not null, primary key
#  number_plate  :string(255)
#  keeping_place :string(255)
#  condition_id  :integer
#  memo          :text
#  status        :integer
#  jikken_id     :integer
#  created_at    :datetime
#  updated_at    :datetime
#  deadline      :date
#

class Syaryo < ActiveRecord::Base
  belongs_to :jikken
  belongs_to :condition

  def self.warning?
   self.where(["deadline < ? ", Date.today]).count > 0
  end

end
