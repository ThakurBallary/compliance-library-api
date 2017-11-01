class ActSerializer < ActiveModel::Serializer
  attributes :id, :key, :value

  has_many :libcompls
end
