class Listing < ActiveRecord::Base


#has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg"
	# has_attached_file :photo, styles: { medium: '300x300>',thumb: '200x200#' }, default_url: 'default.png'
has_attached_file :image, styles: { medium: '200x200#', thumb: '120x120#', large: '300x400#' }, default_url: "default.jpg" 
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/	
 # validates   :category,:title, :description, :photo,  :presence  => true
#validates_attachment_content_type :image, content_type:  {%w(image/jpeg image/jpg image/png)}
#validates_attachment_content_type :image, :content_type => { :content_type => %w(image/jpeg image/jpg image/png) }   
#has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "default.png"
 # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


	#validates_attachment :image, presence: true, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
# validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
#attr_accessible :category, :description, :image_url, :price, :title, :photo
  #has_attached_file :photo, :styles => {:small => "75x75>", :medium => "400x200>" }
end

