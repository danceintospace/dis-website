class BlogController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_blog, except: [:index, :new, :create]
  def index
  end
end
