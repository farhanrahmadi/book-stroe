class Book
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, 				type: String
  field :author, 				type: String
  field :page, 					type: Integer
  field :stock,					type: Integer
  field :description, 	type: String
  field :user,					type: BSON::ObjectId
  validates_presence_of :title
  has_many :comments, dependent: :destroy
  belongs_to :users
end
