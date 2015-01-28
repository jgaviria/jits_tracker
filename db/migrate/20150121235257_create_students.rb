class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :current_rank
      t.date :start_date

      t.timestamps
    end
  end
end
