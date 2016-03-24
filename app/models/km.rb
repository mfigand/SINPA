class Km < ActiveRecord::Base

  belongs_to :user

  validates :sinparun_kms, :total_kms, presence: true
end
