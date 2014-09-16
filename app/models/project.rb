class Project < ActiveRecord::Base

  has_attached_file :layout, :styles => { :medium => "300x300>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :layout, :content_type => ["image/jpeg", "image/gif", "image/png", "application/pdf"]

  validates :name, presence: true
  validates :email, presence: true
  validates :description, presence: true
  validates :budget, presence: true
  validates :layout, presence: true
  validates :timeframe, presence: true
  validates :zip, presence: true

end
