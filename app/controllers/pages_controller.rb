class PagesController < ApplicationController
  def home
    @result = 'josef'
  end

  def calendar
    @time_now = Time.now
    @month = 1
    @year = 2015
  end

  def about_us
  end

  def contact_us
    submitted = params['commit']
    if submitted
      @name = params['name']
      redirect_to :action => 'home'
    else
      @name = nil
    end
  end
end
