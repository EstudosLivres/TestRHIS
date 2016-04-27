module SidebarHelper
  def current_controller_path?(controller_sym)
    params[:controller] == controller_sym.to_s ? 'active' : ''
  end
end