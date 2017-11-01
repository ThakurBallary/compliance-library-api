class LibcomplSerializer < ActiveModel::Serializer

  attributes :id, :area_id, :act_id
  
  belongs_to :area
  belongs_to :act

end
