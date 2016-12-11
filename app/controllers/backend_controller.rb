class BackendController < ActionController::Base
  layout "backend"
  before_action :authenticate_user!
end
