class Site < ActiveRecord::Base

  def self.all_activities
    activity_1 = {
      userId: 123456789,
      activityType: "Run",
      activityTimeZone: Time.zone.now,
      totalDuration: "10:52:26.000",
      totalDistance: 60
    }
    # activity_1 = {
    #   activityId: 1234567891,
    #   activityType: "Run",
    #   activityTimeZone: Time.zone.now,
    #   duration: "1:52:26.000",
    #   distance: 20
    # }
    # activity_user = {
    #     activity_1: activity_1,
    #     activity_2: {activityId: 1234567892, distance: 10},
    #     activity_3: {activityId: 1234567893, distance: 5},
    #     activity_4: {activityId: 1234567894, distance: 21.5}
    #     # activity_5: {activityId: 1234567895, distance: 15},
    #     # activity_6: {activityId: 1234567896, distance: 10},
    #     # activity_7: {activityId: 1234567897, distance: 42}
    # }
  end

end
