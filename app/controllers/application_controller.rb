class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  helper Admins::ApplicationHelper
  #
  # 画面レイアウト分岐
  #
  layout :_layout_by_resource
  def _layout_by_resource
    if devise_controller?
      case resource
      when User
        'application'
      else # User
        'layouts/admins/application'
      end
    end
  end
  #
  # devise ログイン後の遷移先
  #
  def after_sign_in_path_for(resource)
    case resource
    when User
      home_path
    else # Admin
      admin.root_path
    end
  end
  #
  # devise ログアウト後の遷移先
  #
  def after_sign_out_path_for(resource)
    case resource
    when User
      new_user_session_path
    else # Admin
      new_admin_session_path
    end
  end
end
