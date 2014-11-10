class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({:id => params[:id]})
    @photo_source = @photo.source
    @photo_caption = @photo.caption
    render 'show'
  end

  def new_form
  end

  def create_photo
    p = Photo.new

    p.source = params[:the_source]
    p.caption = params[:the_caption]

    p.save
  end

  def destroy
    p = Photo.find_by({:id => params[:id]})
    p.destroy
  end

  def update
    @photo = Photo.find_by({:id => params[:id]})

    @source = @photo.source
    @caption = @photo.caption
  end

  def update_screen
    p = Photo.find_by({:id => params[:id]})

    p.source = params[:the_source]
    p.caption = params[:the_caption]

    p.save
  end

end
