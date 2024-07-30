# frozen_string_literal: true

require "test_helper"

class BlogPostComponentTest < ViewComponent::TestCase
  setup do
    @post = posts(:one)  # Load the fixture data into the instance variable
  end
  test "renders blog post details" do
    render_inline(BlogPostComponent.new(post: @post))

    assert_text "Test Post"
    assert_text "John Doe"
    assert_text "July 29, 2024 22:17"
    assert_text "This is test post content."
    assert_link "Read more"
  end
end
