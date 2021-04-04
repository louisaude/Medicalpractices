class Hour < ApplicationRecord
  belongs_to :doctor
  belongs_to :health_care_company

  validates :weekday, :opening_hour, :opening_minute, :closing_hour, :closing_minute, presence: true

  WEEKDAY = %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday]
  HOUR = (0o0..23)
  MINUTE = (0o0..59)
end
