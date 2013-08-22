module CalendarHelper
  def month_link_left(month_date)
    link_to "<<", {:month => month_date.month, :year => month_date.year}
  end

  def month_link_right(month_date)
    link_to ">>", {:month => month_date.month, :year => month_date.year}
  end
  
  # custom options for this calendar
  def event_calendar_opts
    { 
      :year => @year,
      :month => @month,
      :event_strips => @event_strips,
      :month_name_text => I18n.localize(@shown_month, :format => "%B %Y"),
      :previous_month_text => month_link_left(@shown_month.prev_month),
      :next_month_text => month_link_right(@shown_month.next_month),    
      :height => 700,
      :event_height => 30
    }
  end

  def event_calendar
    # args is an argument hash containing :event, :day, and :options
    calendar event_calendar_opts do |args|
      event = args[:event]
      %(<a href="/users/#{current_user.id}/conferences/#{event.id}" title="#{h(event.title)}">#{h(event.title)}</a>)
    end
  end
end
