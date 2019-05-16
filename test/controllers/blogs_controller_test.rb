require 'test_helper'

class MotoBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @moto_blog = moto_blogs(:one)
  end

  test "should get index" do
    get moto_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_moto_blog_url
    assert_response :success
  end

  test "should create moto_blog" do
    assert_difference('MotoBlog.count') do
      post moto_blogs_url, params: { moto_blog: { author: @moto_blog.author, story: @moto_blog.story, title: @moto_blog.title } }
    end

    assert_redirected_to moto_blog_url(MotoBlog.last)
  end

  test "should show moto_blog" do
    get moto_blog_url(@moto_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_moto_blog_url(@moto_blog)
    assert_response :success
  end

  test "should update moto_blog" do
    patch moto_blog_url(@moto_blog), params: { moto_blog: { author: @moto_blog.author, story: @moto_blog.story, title: @moto_blog.title } }
    assert_redirected_to moto_blog_url(@moto_blog)
  end

  test "should destroy moto_blog" do
    assert_difference('MotoBlog.count', -1) do
      delete moto_blog_url(@moto_blog)
    end

    assert_redirected_to moto_blogs_url
  end
end
