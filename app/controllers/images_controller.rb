class ImagesController < ApplicationController
  def index
    image_dir  = '/Users/matsuhisa/Documents/work/ruby/temp_images/3/'
	image_file = 'large.png'
	image_path = image_dir + image_file
    
	# ファイルの存在確認
	# TODO ファイルのリサイズ

	send_file image_path, :filename => image_file, :type => 'image/jpg',  :disposition => 'inline'
  end

  def show
    id        = params[:id]
	style     = params[:style]
	extension = params[:extension]

    @attach = Attach.find(params[:id])

 
 	image_dir  = '/Users/matsuhisa/Documents/work/ruby/temp_images/' + id + '/'
	image_file = style + '.' + extension
	image_path = image_dir + image_file

    if File.exist?(image_path)
	  send_file image_path, :filename => image_file, :type => 'image/'+extension,  :disposition => 'inline'
	else
	  @attach.photo.reprocess!
	  send_file image_path, :filename => image_file, :type => 'image/'+extension,  :disposition => 'inline'
	  #logger.debug(@attach.photo.styles[:large].inspect)
	end

  end

end
