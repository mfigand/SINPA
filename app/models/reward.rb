class Reward < ActiveRecord::Base
  belongs_to :user
  belongs_to :company
  belongs_to :branch
  has_many :coupons

  validates :name, presence: true, length: { maximum: 250, minimum: 3 }, format: {with: /\A[a-zA-ZÑñ0-9\ ]+\z/}
  validates :kms_cost, :available_units, :description, :valid_from, :valid_through, :image, presence: true

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  # filterrific(
  #   default_filter_params: { sorted_by: 'created_at_desc' },
  #   available_filters: [
  #     :sorted_by,
  #     :search_query,
  #     :with_country_id,
  #     :with_created_at_gte
  #   ]
  # )

end
