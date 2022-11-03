module Api
  module V1
    class ClientsController < ApplicationController
      require "xmlrpc/client"

      def initialize
        @url = 'https://chift.odoo.com'
        @db = 'chift'
        @username = "ben.saintviteux@gmail.com"
        @password = 'quentben'
      end

      # GET /users
      def index
        ClientSerializer.new(fetch_clients)
      end

      private

      def uid
        common = XMLRPC::Client.new2("#{@url}/xmlrpc/2/common")
        uid = common.call('authenticate', @db, @username, @password, {})
      end

      def fetch_clients
        models = XMLRPC::Client.new2("#{@url}/xmlrpc/2/object").proxy
        data = models.execute_kw(@db, uid, @password, 'res.partner', 'search_read', [[['is_company', '=', true]]], {fields: %w(name email street zip), limit: 5})
      end

    end
  end
end
