# == Schema Information
#
# Table name: jikkens
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  plan_start :datetime
#  plan_end   :datetime
#  act_start  :datetime
#  act_end    :datetime
#  memo       :text
#  created_at :datetime
#  updated_at :datetime
#

class Jikken < ActiveRecord::Base
  has_many :buhins
  has_many :syaryos

  def self.import(file)
#    CSV.foreach(file.path, headers: true) do |row|
#      Jikken.create! row.to_hash
#    end

    CSV.foreach(file.path, headers: true) do |row|
      jikken = find_by_id(row["id"]) || new
      jikken.attributes = row.to_hash.slice(*Jikken.attribute_names()) # Rails4ではこの書き方になるとのこと
      jikken.save!
    end
  
  end
  
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |jikken|
        csv << jikken.attributes.values_at(*column_names)
      end
    end
  end


  #予定の実験数を取得（引数；date型、dateの前２ヶ月、当月、後９ヶ月のデータを作成）
  def self.count_yotei_exp(date)
  	result = Array.new
    for i in 1 .. 12 do
      result.push(Jikken.where(["plan_start <= ? and plan_end >= ?", 
      	                         (date>>i-3).end_of_month,
      	                         (date>>i-3).beginning_of_month]).count)
  	end
    return result
  end

  #実績の実験数を取得（引数；date型、dateの前２ヶ月、当月、後９ヶ月のデータを作成）
  def self.count_jisseki_exp(date)
  	result = Array.new
    for i in 1 .. 12 do
      result.push(Jikken.where(["act_start <= ? and act_end >= ?", 
      	                         (date>>i-3).end_of_month,
      	                         (date>>i-3).beginning_of_month]).count)
  	end
    return result
  end

  #グラフ用のラベルを作成（引数；date型、dateの前２ヶ月、当月、後９ヶ月のラベルを作成）
  def self.graph_label(date)
  	result = Array.new
    for i in 1 .. 12 do
      result.push((date>>i-3).strftime("%Y/%m").to_s) 
    end
    return result
  end


end
