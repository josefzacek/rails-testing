module PagesHelper
  def nav_link_to(text, action, url, style)
    if action_name == action
      link_to text, url, class: style
    else
      link_to text, url
    end
  end

  def calendar(day_of_week)
    days = %w(Mon Tue Wed Thu Fri Sat Sun)
    cal = '<table border="1"><tr>'
    days.each do |day|
      cal += "<td> #{day} </td>"
    end
    cal += '</tr><tr>'
    day_of_week.to_i.next.times do
      cal += '<th>&nbsp;</th>'
    end
    cal += '</tr></table>'
    cal.html_safe
  end
end
