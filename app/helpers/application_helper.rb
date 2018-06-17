module ApplicationHelper
  def nav_link(name, path)
    link_to name, path, class: "#{request.path.starts_with?(path) ? 'active' : ''}"
  end
end
