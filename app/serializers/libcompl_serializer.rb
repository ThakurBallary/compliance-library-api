class LibcomplSerializer < ActiveModel::Serializer

  attributes :id, :area_id, :act
  belongs_to :area
  
end
