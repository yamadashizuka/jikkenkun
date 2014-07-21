class Jikken < ActiveRecord::Base
  has_many :buhins
  has_one  :syaryo

  #予定の実験数を取得（前後６ヶ月分）
  def self.count_yotei_exp(date)
  	result = Array.new
    for i in 1 .. 12 do
      result.push(Jikken.where(["plan_start <= ? and plan_end >= ?", 
      	                         (date>>i-3).end_of_month,
      	                         (date>>i-3).beginning_of_month]).count)
  	end
    return result
  end

  #実績の実験数を取得（前後６ヶ月分）
  def self.count_jisseki_exp(date)
  	result = Array.new
    for i in 1 .. 12 do
      result.push(Jikken.where(["act_start <= ? and act_end >= ?", 
      	                         (date>>i-3).end_of_month,
      	                         (date>>i-3).beginning_of_month]).count)
  	end
    return result
  end

  #グラフ用の
  def self.graph_label(date)
  	result = Array.new
    for i in 1 .. 12 do
      result.push((date>>i-3).strftime("%Y年%m月").to_s) 
    end
    return result
  end

end
