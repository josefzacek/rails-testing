module PagesHelper
  def nav_link_to(text, controller, action, url, style)
    if action_name == action && controller_name == controller
      link_to text, url, class: style
    else
      link_to text, url
    end
  end

  def calendar(year, month)
    current_date = Date.new(year, month)
    day_of_week = current_date.strftime('%w').to_i
    days = %w(Mon Tue Wed Thu Fri Sat Sun)
    cal = '<table border="1"><tr>'
    days.each do |day|
      cal += "<td> #{day} </td>"
    end

    cal += '</tr><tr>'
    day_of_week.times do
      cal += '<td>&nbsp;</td>'
    end

    (7 - day_of_week).times do |day|
      cal += "<td>#{day + 1}</td>"
    end

    cal += '</tr>'
    cal += '</table>'
  end
end
