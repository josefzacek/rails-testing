class AnimalsController < ApplicationController
  def index
    @name = 'Josef'
    @surname = 'Zacek'
    @animal_description = Animal.animal_description
  end
end
