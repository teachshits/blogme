class TagsController < ApplicationController
  before_filter :find_tag, :only => :show

  private
  def find_tag
    @tag = ActsAsTaggableOn::Tag.find params[:id]
  end
end
