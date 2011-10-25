module ApplicationHelper

  def display_flash
    flashes = flash.map do |name, msg|
      content_tag(:div, msg, :class => [name, :flash])
    end

    flashes.join('\n').html_safe
  end
end
