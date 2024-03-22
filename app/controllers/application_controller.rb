class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
    # ↑keysの後ろはプロト用にする←プロト用として:profile, :occupation, :positionを追加しました。
  end
end
