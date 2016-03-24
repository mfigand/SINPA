class Site < ActiveRecord::Base

  def self.all_activities
    activity_1 = {
      userId: 123456789,
      activityType: "Run",
      activityTimeZone: Time.zone.now,
      totalDuration: "10:52:26.000",
      totalDistance: 20
    }
  end

end
