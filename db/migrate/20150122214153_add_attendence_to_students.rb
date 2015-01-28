class AddAttendenceToStudents < ActiveRecord::Migration
  def change
    add_column :students, :attendence, :integer
  end
end
