class Hour < ApplicationRecord
  belongs_to :doctor
  belongs_to :health_care_company


  WEEKDAY = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
  HOUR = (00..23)
  MINUTE = (00..59)

end
