class Article < ApplicationRecord
  has_many :taggings
  has_many :tags, through: :taggings
  has_many :comments
  def tag_list
  self.tags.collect do |tag|
      tag.name
    end.join(", ")
  end
end
