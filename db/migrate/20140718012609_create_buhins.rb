class CreateBuhins < ActiveRecord::Migration
  def change
    create_table :buhins do |t|
      t.string :hinmei
      t.string :hinban
      t.string :nouhin_sya
      t.datetime :nouhin_day
      t.string :tantou
      t.integer :kosu
      t.integer :jikken_id

      t.timestamps
    end
  end
end
