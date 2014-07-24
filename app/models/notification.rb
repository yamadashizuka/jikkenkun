# == Schema Information
#
# Table name: notifications
#
#  id             :integer          not null, primary key
#  contents       :string(255)
#  available_from :date
#  available_to   :date
#  created_at     :datetime
#  updated_at     :datetime
#

class Notification < ActiveRecord::Base
  def self.information
    date = Date.today
    info = self.where(["available_from <= ? and available_to >= ?", 
                                 date,date])
    return info
  end
end
