class SectionsController < ApplicationController
  layout 'booklet'

  def index
    @aside_navigation = Commentary.order(:position)
    @section = Section.all
  end

  def show
    @aside_navigation = Commentary.order(:position)
    @content = Section.find(params[:id])
    @sections = Section.where(commentary_id: @content.commentary_id).order(:position)
  end

  def new
    @section = Section.new
    @all_commentary = Commentary.order(:position)
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
    @section = Section.find(params[:id])
    if @section.update(section_params)
      redirect_to @section
    else
      render 'edit'
    end
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
