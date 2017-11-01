class AreaSerializer < ActiveModel::Serializer

  attributes :id, :position, :name
  has_many :libcompls
  
end
