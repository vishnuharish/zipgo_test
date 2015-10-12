class Product
  include Mongoid::Document

  field :name, type: String

  belongs_to :category
  has_many :images, class_name: "Image", as: :picture
  
  accepts_nested_attributes_for :images, :allow_destroy => true

end
