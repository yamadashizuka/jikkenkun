class RenameConditionToSyaryos < ActiveRecord::Migration
  def change
    rename_column :syaryos, :condition, :condition_id
  end
end
