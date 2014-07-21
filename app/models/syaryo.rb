class Syaryo < ActiveRecord::Base
  belongs_to :jikken
  belongs_to :condition, class_name: 'Condition', foreign_key: 'condition_id'
end
