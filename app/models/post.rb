class Post < ActiveRecord::Base
  attr_accessible :slug, :text, :title, :user_id

  validates :text, :slug, :title, :user_id, :presence => true

  belongs_to :user

  after_create :update_slug

  before_update :assign_slug

  def to_param
    slug
  end

  private
  def assign_slug
    self.slug = "#{ id }-#{ title.parameterize }"
  end

  def update_slug
    update_attributes :slug => assign_slug
  end
end
