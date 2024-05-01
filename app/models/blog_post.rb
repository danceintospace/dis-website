class BlogPost < ApplicationRecord
  has_rich_text :content
  has_many_attached :images

  validates :title, presence: true
  validates :content, presence: true

  scope :sorted, ->{order(Arel.sql("published_at DESC NULLS LAST")).order(updated_at: :desc) }
  scope :draft, -> { where(published_at: nil) }
  scope :published, -> { where("published_at <= ?", Time.current) }
  scope :scheduled, -> { where("published_at > ?",  Time.current) }

  def draft?
    published_at.nil?
  end

  def published?
    published_at? && published_at <= Time.current
  end

  def scheduled?
    published_at? && published_at > Time.current
  end


  def create
    @blog_post = BlogPost.new(blog_post_params)
    if @blog_post.save
      redirect_to @blog_post
    else
      render :new
    end
  end

  private

  def blog_post_params
    params.require(:blog_post).permit(:title, :content, :images) # Add :title if not already present
  end
end
