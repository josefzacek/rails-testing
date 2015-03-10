class SectionsController < ApplicationController
  layout 'booklet'

  def index
    @aside_navigation = Commentary.order(:position)
    @section = Section.all
  end

  def show
    @aside_navigation = Commentary.order(:position)
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      redirect_to controller: :commentaries, action: :index
    else
      render 'new'
    end
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to commentaries_path
  end

  private

  def section_params
    params.require(:section).permit(:title, :position, :content, :commentary_id)
  end
end
