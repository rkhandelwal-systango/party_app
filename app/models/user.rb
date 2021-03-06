class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
        # before_action :authenticate_user!
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  has_many :parties

  #attr_accessor :email, :password, :password_confirmation, :remember_me
 
  validates :name, :length => { :minimum => 2 }
  validates :city, :presence => true
  validates :state, :presence => true
  validates :address, :presence => true
  validates :pincode,:numericality => true
 
 scope :role_of_user,-> (role){where(role: role)} 
 
end

