class SessionsController < Devise::SessionsController
  protected

  def after_sign_in_path_for(resource)
    if resource.manager
      manager_dashboard_path
    else
      dashboard_path
    end
  end
end
