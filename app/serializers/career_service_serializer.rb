class CareerServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :address
  has_one :user
end
