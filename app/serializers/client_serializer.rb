class ClientSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :street, :zip
end
