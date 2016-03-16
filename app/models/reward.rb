class Reward < ActiveRecord::Base
  belongs_to :user
  belongs_to :branch

  validates :name, presence: true, length: { maximum: 250 }
  validates :kms_cost, :description, :valid_from, :valid_through, presence: true
  validates :code, uniqueness: true, presence: true
end
