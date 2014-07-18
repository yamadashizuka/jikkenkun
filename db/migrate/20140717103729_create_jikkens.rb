class CreateJikkens < ActiveRecord::Migration
  def change
    create_table :jikkens do |t|
      t.string :title
      t.datetime :plan_start
      t.datetime :plan_end
      t.datetime :act_start
      t.datetime :act_end
      t.text :memo

      t.timestamps
    end
  end
end
