class Photo < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => {:large => "600x600", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :image , :content_type => /\Aimage\/.*\Z/
=begin
  	def self.search(search)
	  where("title LIKE ?", "%#{search}%")
	  where("keywords LIKE ?", "%#{search}") 
	end
=end

 # attr_accessor :image
 #  # Paperclip image images
 #  has_attached_file :image, :processors => [:watermark],
 #                    :styles => { 
 #                                 :thumb => '150x150>', 
 #                                 :original => { :geometry => '800>', :watermark_path => "#{Rails.root}/public/images/logo.png" } 
 #                               },
 #                    :url    => '/assets/image/:id/:style/:basename.:extension',
 #                    :path   => ':rails_root/public/assets/image/:id/:style/:basename.:extension',
 #                    :default_url => "/images/:style/mising.png"
end
