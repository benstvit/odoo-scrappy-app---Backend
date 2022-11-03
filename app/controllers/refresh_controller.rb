class SigninController < ApplicationController
  before_action :authorize_refresh_by_access_request!, only: [:destroy]


end
