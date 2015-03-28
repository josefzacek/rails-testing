class CommentariesController < ApplicationController
  layout 'booklet'
  def index
    @aside_navigation = Commentary.order(:position)
  end

  def show
    @aside_navigation = Commentary.order(:position)
    @content = Commentary.find_by_slug(params[:id])
    @sections = @content.sections.order(:position)
  end

  def new
    @commentary = Commentary.new
  end

  def create
    @commentary = Commentary.new(commentary_params)
    if @commentary.save
      redirect_to action: :index
    else
      render 'new'
    end
  end

  def edit
    @commentary = Commentary.find_by_slug(params[:id])
  end

  def update
    @commentary = Commentary.find_by_slug(params[:id])
    if @commentary.update(commentary_params)
      redirect_to action: :index
    else
      render 'edit'
    end
  end

  def destroy
    @commentary = Commentary.find_by_slug(params[:id])
    @commentary.destroy
    redirect_to commentaries_path
  end

  private
  def commentary_params
    params.require(:commentary).permit(:title, :position, :slug)
  end
end
