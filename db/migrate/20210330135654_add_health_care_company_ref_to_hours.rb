class AddHealthCareCompanyRefToHours < ActiveRecord::Migration[6.0]
  def change
    add_reference :hours, :health_care_company, null: false, foreign_key: true
  end
end
