class HomeController < ApplicationController
  helper_method :collection

  private
  def collection
    @posts ||= Post.scoped.order('created_at DESC')
  end
end
