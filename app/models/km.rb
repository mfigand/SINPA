class Km < ActiveRecord::Base

  belongs_to :user

  validates :kms, presence: true
end
