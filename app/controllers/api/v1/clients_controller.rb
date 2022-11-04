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
        fetch_clients.each do |client|
          client.keys.each { |k| params[k] = client[k] }
          Client.create(name: params[:name], email: params[:email], street: params[:street], zip: params[:zip])
        end
        @clients = Client.all
        response_to_json(ClientSerializer.new(@clients).serialized_json)
      end

      def create
        @client = Client.new(client_params)
        @client.save
      end

      def destroy
        @client = Client.find(params[:id])
        @client.destroy
      end

      def destroy_all
        @clients = Client.all
        @clients.destroy
      end

      private

      def fetch_clients
        models = XMLRPC::Client.new2("#{@url}/xmlrpc/2/object").proxy
        data = models.execute_kw(@db, uid, @password, 'res.partner', 'search_read', [[['is_company', '=', true]]], {fields: %w(name email street zip), limit: 5})
      end

      def uid
        common = XMLRPC::Client.new2("#{@url}/xmlrpc/2/common")
        uid = common.call('authenticate', @db, @username, @password, {})
      end

      def client_params
        params.permit(:id, :name, :email, :street, :zip)
      end

    end
  end
end
