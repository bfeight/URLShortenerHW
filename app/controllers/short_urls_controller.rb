class ShortUrlsController < ApplicationController
  # respond_to :html
  def index
    @short_url = ShortUrl.new
    # display all
  end


  def create
    short_url = ShortUrl.create(short_params)
    redirect_to root_path
  end

  def show
    short_var = ShortUrl.find(params[:id])
    redirect_to short_var.original_url

  end

  private

  def short_params
    params.require(:short_url).permit(:original_url)
  end
end
