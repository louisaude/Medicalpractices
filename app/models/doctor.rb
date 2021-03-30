class Doctor < ApplicationRecord
  belongs_to :health_care_company
  has_many :hours, dependent: :destroy
end