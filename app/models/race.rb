class Race < ActiveRecord::Base
  belongs_to :user

  validates :kms, :sync_date, :source, presence: true
end
