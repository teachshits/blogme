class HomeController < ApplicationController
  helper_method :collection

  private
  def collection
    @posts ||= Post.scoped.page(params[:page]).order('created_at DESC')
  end
end
