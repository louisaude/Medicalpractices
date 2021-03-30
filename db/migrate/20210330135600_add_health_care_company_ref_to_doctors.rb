class AddHealthCareCompanyRefToDoctors < ActiveRecord::Migration[6.0]
  def change
    add_reference :doctors, :health_care_company, null: false, foreign_key: true
  end
end
