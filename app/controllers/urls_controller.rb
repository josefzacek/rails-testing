class UrlsController < ApplicationController
  def url_get_params
    @month = params[:month]
    @day = params[:day]
  end
end
