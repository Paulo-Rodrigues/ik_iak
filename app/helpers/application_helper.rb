module ApplicationHelper
  def flash_messages
    flash.map do |key, msg|
      content_tag :div, msg, class: key
    end.join.html_safe
  end
end
