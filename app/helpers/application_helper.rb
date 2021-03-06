module ApplicationHelper
  def flash_class(type)
    case type
    when :alert
      ""
    when :notice
      "alert-success"
    else
      ""
    end
  end

  def markdown(text)
    options = [:hard_wrap, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode]
    Redcarpet.new(text, *options).to_html.html_safe
  end

  def is_admin?
    current_user.admin
  end
end
