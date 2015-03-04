class PagesController < ApplicationController
  def home
    @result = 'josef'
  end

  def calendar
    @time_now = Time.now
  end

  def about_us
  end

  def contact_us
  end
end
