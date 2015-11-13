class Podcast < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :episodes
  has_attached_file :thumbnail, styles: { large: "1000x1000#", medium: "150x150#" }
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\Z/
end
