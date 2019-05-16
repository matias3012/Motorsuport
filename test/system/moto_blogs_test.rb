require "application_system_test_case"

class MotoBlogsTest < ApplicationSystemTestCase
  setup do
    @moto_blog = moto_blogs(:one)
  end

  test "visiting the index" do
    visit moto_blogs_url
    assert_selector "h1", text: "Blogs"
  end

  test "creating a Blog" do
    visit moto_blogs_url
    click_on "New Blog"

    fill_in "Author", with: @moto_blog.author
    fill_in "Story", with: @moto_blog.story
    fill_in "Title", with: @moto_blog.title
    click_on "Create Blog"

    assert_text "Blog was successfully created"
    click_on "Back"
  end

  test "updating a Blog" do
    visit moto_blogs_url
    click_on "Edit", match: :first

    fill_in "Author", with: @moto_blog.author
    fill_in "Story", with: @moto_blog.story
    fill_in "Title", with: @moto_blog.title
    click_on "Update Blog"

    assert_text "Blog was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog" do
    visit moto_blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog was successfully destroyed"
  end
end
