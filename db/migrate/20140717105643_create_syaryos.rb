class CreateSyaryos < ActiveRecord::Migration
  def change
    create_table :syaryos do |t|
      t.string :number_plate
      t.string :keeping_place
      t.integer :condition
      t.text :memo
      t.integer :status
      t.integer :jikken_id

      t.timestamps
    end
  end
end
