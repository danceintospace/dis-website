  # frozen_string_literal: true

  # == BlogPost
  # Represents a blog post with a title, content, and optional cover image.
  # ...# frozen_string_literal: true
class BlogPost < ApplicationRecord
  before_save :generate_slug
  has_one_attached :cover_image

  validates :title, presence: true

  def generate_slug
    self.slug = title.parameterize
    count = 2
    while BlogPost.exists?(slug:)
      self.slug = "#{title.parameterize}-#{count}"
      count += 1
    end
  end

  def self.ransackable_attributes(_auth_object = nil)
    %w[title]
  end

  def self.ransackable_associations(_auth_object = nil)
    %w[]
  end
end
