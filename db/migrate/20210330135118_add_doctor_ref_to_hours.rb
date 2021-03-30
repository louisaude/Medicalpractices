class AddDoctorRefToHours < ActiveRecord::Migration[6.0]
  def change
    add_reference :hours, :doctor, null: false, foreign_key: true
  end
end
