# frozen_string_literal: true

class BlogPostsController < ApplicationController
  include Pagy::Backend
  # before_action :set_blog_post, only: %i[ edit update destroy ]
  skip_before_action :authenticate_user!, only: %i[index show]
  # GET /blog_posts or /blog_posts.json
  def index
    @pagy, @blog_posts = pagy(BlogPost.all, items: 12)
  end

  def show
    @blog_post = BlogPost.find_by!(slug: params[:slug])
  end

    def set_blog_post
      @blog_post = BlogPost.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def blog_post_params
      params.fetch(:blog_post, {})
    end
end
