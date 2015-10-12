class Category
  include Mongoid::Document
  field :title, type: String

  has_many :products

  has_many :images, class_name: "Image", as: :poster
  
  accepts_nested_attributes_for :images, :allow_destroy => true
end
