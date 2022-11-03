module Api
  module V1
    class ClientsController < ApplicationController
      require "xmlrpc/client"

      # before_action :authorize_access_request!

      # GET /users
      def index
        @clients = fetch_clients
        current_user.clients = @clients
        render json: @clients
      end

      # POST /users
      def create
      end

      private

      def fetch_clients
        url = 'https://chift.odoo.com'
        db = 'chift'
        username = "ben.saintviteux@gmail.com"
        password = 'quentben'
        common = XMLRPC::Client.new2("#{url}/xmlrpc/2/common")
        return common.call('version')
      end
    end
  end
end
