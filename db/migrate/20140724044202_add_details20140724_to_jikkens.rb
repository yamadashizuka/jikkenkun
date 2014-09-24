class AddDetails20140724ToJikkens < ActiveRecord::Migration
  def change
    add_column :jikkens, :tantou, :string
    add_column :jikkens, :deadline, :date
  end
end
