class PostsController < InheritedResources::Base
  load_and_authorize_resource :except => :index

  before_filter :assign_current_user, :only => [:new, :create]

  private
  def assign_current_user
    build_resource.user = current_user
  end
end
