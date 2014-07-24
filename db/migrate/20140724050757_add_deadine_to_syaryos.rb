class AddDeadineToSyaryos < ActiveRecord::Migration
  def change
    add_column :syaryos, :deadline, :date
  end
end
