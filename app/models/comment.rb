class Comment < ActiveRecord::Base
  attr_accessible :text, :post_id

  attr_protected :user_id

  belongs_to :user

  belongs_to :post

  validates :user_id, :text, :post_id, :presence => true
end
