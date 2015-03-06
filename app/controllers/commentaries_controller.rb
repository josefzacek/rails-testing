class CommentariesController < ApplicationController
  layout 'booklet'
  def index
    @aside_navigation = Commentary.all
  end

  def show
    @aside_navigation = Commentary.all
    @content = Commentary.find(params[:id])
  end
end
