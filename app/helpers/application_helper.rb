module ApplicationHelper

  def toastr_flash
    flash.each_with_object([]) do |(type, message), flash_messages|
      type = 'success' if type == 'notice'
      type = 'error' if type == 'alert'
      text = "<script>toastr.#{type}('#{message}', '', { closeButton: true, progressBar: true })</script>"
      flash_messages << text.html_safe if message
    end.join("\n").html_safe
  end

  def flash_messages
    flash.each_with_object([]) do |(type, message), flash_messages|
      puts type
      type = 'success' if type == 'notice'
      type = 'error' if type == 'alert'
      flash_messages << "<div class=\"alert alert-#{type}\" role=\"#{type}\">#{message}</div>"  if message
    end.join("\n").html_safe
  end

end
