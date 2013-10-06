class Attach < ActiveRecord::Base
  has_attached_file :photo, {
    :styles => {
      :thumb => ["50x50#", :png],
      :medium => ["100x100#", :png],
      :large => ["300x300>", :png],
      :large2 => ["400x400>", :png]
    },
    :convert_options => {
      :thumb => "-gravity Center -crop 50x50+0+0",
      :thumb => "-gravity Center -crop 100x100+0+0",
    },
	#:path => ":rails_root/public/system/:id/:style.:extension",
	#:url  => "#{ActionController::Base.relative_url_root}/system/:id/:style.:extension"
	:path => "/Users/matsuhisa/Documents/work/ruby/temp_images/:id/:style.:extension",
	:url  => "/images/:id/:style.:extension"
  }

  has_many :imageings
end
