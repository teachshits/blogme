class PostsController < InheritedResources::Base
  load_and_authorize_resource :except => :index

  before_filter :assign_current_user, :only => [:new, :create]

  belongs_to :user, :optional => true

  private
  def assign_current_user
    build_resource.user = current_user
  end

  def collection
    @posts ||= end_of_association_chain.page(params[:page]).order('created_at DESC')
  end
end
