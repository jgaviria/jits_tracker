class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.integer :student_id

      t.timestamps
    end
  end
end
