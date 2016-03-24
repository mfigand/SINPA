class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :rewards
  has_many :races
  has_many :coupons
  has_many :kms

  validates :name, presence: true, length: { maximum: 250 }
  validates :email, uniqueness: true
  validates :password, presence: true

 has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def self.new_runner(current_user,params)
    # binding.pry
    current_user_kms = Km.create(sinparun_kms:params[:totalDistance].to_i,
     total_kms:params[:totalDistance].to_i,
     nike_last_total_kms:params[:totalDistance].to_i,
     level: 1, races: 1, user_id:current_user.id)
  end

  def self.update_runner(current_user,params)
    kms_accounts = current_user.kms[0]
    # binding.pry
    if params[:totalDistance].to_i > kms_accounts.nike_last_total_kms
      nike_new_kms = params[:totalDistance].to_i - kms_accounts.nike_last_total_kms
      kms_accounts.sinparun_kms = kms_accounts.sinparun_kms + nike_new_kms
      kms_accounts.total_kms = kms_accounts.total_kms + nike_new_kms
      kms_accounts.nike_last_total_kms = params[:totalDistance].to_i
      kms = kms_accounts.total_kms
      level = kms/100 == 0 ? 1 : (kms/100 + 1)
      kms_accounts.level = level
      kms_accounts.races = kms_accounts.races + 1
      kms_accounts.save
      kms_accounts
      kms_accounts
   else
    kms_accounts

   end
  end

end
