class Party < ActiveRecord::Base
has_attached_file :avatar, styles: { medium: "120x150>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
 validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

belongs_to :user
validates :title, :presence => true
validates :party_type, :presence => true
validates :party_date, :presence => true
validates :time, :presence => true
validates :no_of_person, :presence => true
validates :venue, :presence => true


scope :status_of_party,-> (status){where(status: status)} 
end
