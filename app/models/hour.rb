class Hour < ApplicationRecord
  belongs_to :doctor
  belongs_to :health_care_company
end
