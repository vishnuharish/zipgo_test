class Image
  include Mongoid::Document

	mount_uploader :image, ImageUploader

	
	belongs_to :poster, class_name: 'Category' , :polymorphic => true
	belongs_to :picture, class_name: 'Product' , :polymorphic => true
end
