# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 車両の状態(Condition)の選択肢
Condition.delete_all  # 洗い替えにしたいので、いったん全てを削除
Condition.create( :name => '未使用',         :description => '', :id => 1)
Condition.create( :name => '再利用可能',     :description => '', :id => 2)
Condition.create( :name => '条件付再利用可', :description => '', :id => 3)
Condition.create( :name => '再利用不可',     :description => '', :id => 4)
Condition.create( :name => '状態不明',       :description => '', :id => 5)

