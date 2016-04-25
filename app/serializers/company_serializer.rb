class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :phone, :email, :website, :address, :customer_id, :addtional_info
end
