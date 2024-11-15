class BlogPostsController < ApplicationController
  include Pagy::Backend
  # before_action :set_blog_post, only: %i[ edit update destroy ]
  skip_before_action :authenticate_user!, only: [:index]
  # GET /blog_posts or /blog_posts.json
  def index
    @pagy, @blog_posts = pagy(BlogPost.all, items: 12)
  end

  def new
    @blog_post = BlogPost.new
  end
  
  # GET /blog_posts/1 or /blog_posts/1.json
  def show
    @blog_post = BlogPost.find(params[:id])
  end



  # POST /blog_posts or /blog_posts.json
  def create
    @blog_post = BlogPost.new(blog_post_params)

    respond_to do |format|
      if @blog_post.save
        format.html { redirect_to @blog_post, notice: "Blog post was successfully created." }
        format.json { render :show, status: :created, location: @blog_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_posts/1 or /blog_posts/1.json
  def update
    respond_to do |format|
      if @blog_post.update(blog_post_params)
        format.html { redirect_to @blog_post, notice: "Blog post was successfully updated." }
        format.json { render :show, status: :ok, location: @blog_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_posts/1 or /blog_posts/1.json
  def destroy
    @blog_post.destroy!

    respond_to do |format|
      format.html { redirect_to blog_posts_path, status: :see_other, notice: "Blog post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
      # GET /blog_posts/new


  # GET /blog_posts/1/edit
  def edit
  end
    
    def set_blog_post
      @blog_post = BlogPost.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def blog_post_params
      params.fetch(:blog_post, {})
    end
end
