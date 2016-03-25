class Photo < ActiveRecord::Base
	belongs_to :user
	# belongs_to :role_photo
	# has_attached_file :image, :styles => {:large => "600x600", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  	#validates_attachment_content_type :image , :content_type => /\Aimage\/.*\Z/
=begin
  	def self.search(search)
	  where("title LIKE ?", "%#{search}%")
	  where("keywords LIKE ?", "%#{search}") 
	end
=end
 attr_accessor :release_form
 attr_accessor :licence
 attr_accessor :image
  # Paperclip image images
  has_attached_file :image, :processors => [:watermark],
                    :styles => { 
                    			 :large => "600x600",
                                 :thumb => '150x150>', 
                                 :original => { :geometry => '700>', :watermark_path => "#{Rails.root}/app/assets/images/watermark.png", :position => "Center" } 
                               },
                    :url    => '/assets/image/:id/:style/:basename.:extension',
                    :path   => ':rails_root/public/assets/image/:id/:style/:basename.:extension',
                    :default_url => "/images/:style/mising.png"
  validates_attachment_content_type :image , :content_type => /\Aimage\/.*\Z/


	has_attached_file :release_form
  validates_attachment :release_form, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }

  has_attached_file :licence
	validates_attachment :licence, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
end
