class FormController < ApplicationController
  def contact
    @name = params[:name]
    @email = params[:email]
  end
end
