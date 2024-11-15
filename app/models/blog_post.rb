class BlogPost < ApplicationRecord
  has_one_attached :cover_image

    # Check if the blog post is a draft (published_at is nil)
    def draft?
      published_at.nil?
    end
  
    # Check if the blog post is scheduled (published_at is in the future)
    def scheduled?
      published_at.present? && published_at > Time.current
    end
end
