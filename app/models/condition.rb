# == Schema Information
#
# Table name: conditions
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Condition < ActiveRecord::Base
end
