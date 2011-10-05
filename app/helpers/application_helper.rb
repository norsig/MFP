module ApplicationHelper
  # Make it easy to set a page title
  def title(page_title)
    content_for(:title) { page_title }
  end

  # Show the FLASH div if there is data in the flash object.
  def show_flash
    result = ''
    flash.each {|type, message| result << content_tag(:div, message, :class => type.to_s) }
    return result.html_safe
  end
end
