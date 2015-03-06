class PagesController < ApplicationController
  def home
    @result = 'josef'
  end

  def calendar
    @time_now = Time.now
    @month = 3
    @year = 2015
  end

  def about_us
  end

  def contact_us
  end
end
