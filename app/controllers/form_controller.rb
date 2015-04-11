class FormController < ApplicationController
  def contact
    @name = params[:name]
    @email = params[:email]

    if @name == ''
      flash['error'] = 'Must enter your name'
    end
  end
end
