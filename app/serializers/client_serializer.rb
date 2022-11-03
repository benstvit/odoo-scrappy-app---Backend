class ClientSerializer
  include JSONAPI::Serializer
  attributes :name, :email, :street, :zip
end
