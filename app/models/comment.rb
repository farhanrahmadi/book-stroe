class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  field :description		,type: String
  field :user ,type: BSON::ObjectId
  field :book ,type: BSON::ObjectId

  has_one :users , class_name: "Book", inverse_of: :book_id
  has_one :books 			
end
