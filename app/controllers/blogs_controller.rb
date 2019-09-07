class BlogsController < ApplicationController
  def index
  	@blogs =Admin::Blog.all
  end
end
