class CreateHealthCareCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :health_care_companies do |t|
      t.string :name

      t.timestamps
    end
  end
end
