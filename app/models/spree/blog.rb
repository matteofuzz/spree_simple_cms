module Spree
  class Blog < ActiveRecord::Base
    validates_presence_of :name, :content
    validate :no_image_errors
    
    extend ::FriendlyId
    friendly_id :name, :use => :slugged

    has_attached_file :image, :styles => {
          :thumbnail => "100x100>",
          :small => "200x200>",
          :medium => "300x300>",
          :big => "400x400#",
          :custom => Proc.new { |instance| "#{instance.image_width}x#{instance.image_height}#" }}

    has_many :uploads, :as => :uploadable
    accepts_nested_attributes_for :uploads, :allow_destroy => true

    before_save :set_published_at, :if => Proc.new {|model| model.published_at.nil? }
    
    #TODO: spostare in libreria
    def no_image_errors
      unless image.errors.empty?
        errors.add :image, "Paperclip returned errors for file '#{image_file_name}' - check ImageMagick installation or image source file."
        false
      end
    end
    
  end
end
