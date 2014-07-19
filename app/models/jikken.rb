class Jikken < ActiveRecord::Base
  has_many :buhins
  has_many :syaryos

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Jikken.create! row.to_hash
    end

#    CSV.foreach(file.path, headers: true) do |row|
#      jikken = find_by_id(row["id"]) || new
#      jikken.attributes = row.to_hash.slice(*accessible_attributes)
#      jikken.save!
#    end
  
  end
  
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |jikken|
        csv << jikken.attributes.values_at(*column_names)
      end
    end
  end


end
