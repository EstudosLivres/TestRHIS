module ActionsHelper
  def current_controller_path?(controller_sym)
    params[:controller] == controller_sym.to_s ? 'active' : ''
  end

  def back_action
    self.send("#{params[:controller]}_path")
  end
end