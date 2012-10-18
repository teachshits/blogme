class CommentsController < InheritedResources::Base
  before_filter :build_comment, :only => [:new, :create]

  belongs_to :post, :optional => true

  load_and_authorize_resource

  respond_to :js

  private
  def build_comment
    if parent
      @comment = parent.comments.build params[:comment]

      @comment.user = current_user
    end
  end
end
