# frozen_string_literal: true

class BlogPostComponent < ApplicationComponent
  def initialize(post:)
    @post = post
  end

  def title
    @post.title
  end

  def date
    @post.created_at.to_formatted_s(:long)
  end

  def author
    @post.user.name || @post.user.email
  end

  def truncated_content
    @post.content.truncate(200, separator: ' ')
  end
end
