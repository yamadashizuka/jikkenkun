class AddCondition2IdToSyaryos < ActiveRecord::Migration
  def change
    add_column :syaryos, :condition2_id, :integer
  end
end
