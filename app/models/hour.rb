class Hour < ApplicationRecord
  belongs_to :doctor
  belongs_to :health_care_company

  WEEKDAY = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
  HOUR = (00..24)
  MINUTE = (00..60)

end
