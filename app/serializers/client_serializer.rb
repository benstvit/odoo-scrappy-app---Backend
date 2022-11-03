class ClientSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :email, :street, :zip
end
