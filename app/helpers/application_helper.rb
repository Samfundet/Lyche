module ApplicationHelper
  def days_of_week
    (DateTime.now.beginning_of_week..DateTime.now.end_of_week)
  end
  def opening_hours
    Rails.configuration.opening_hours
  end
end
