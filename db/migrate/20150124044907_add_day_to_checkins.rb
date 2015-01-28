class AddDayToCheckins < ActiveRecord::Migration
  def change
    add_column :checkins, :day, :boolean
  end
end
