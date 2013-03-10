class TagsController < ApplicationController
  def show
    @bookmarks = Bookmark.tagged_with(params[:tag]).order('created_at DESC')
  end
end
