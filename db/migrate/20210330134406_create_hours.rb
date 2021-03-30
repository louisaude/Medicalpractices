class CreateHours < ActiveRecord::Migration[6.0]
  def change
    create_table :hours do |t|
      t.string :weekday
      t.string :opening_hour
      t.string :opening_minute
      t.string :closing_hour
      t.string :closing_minute

      t.timestamps
    end
  end
end
