require 'test_helper'

class SiteVisitorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @site_visitor = site_visitors(:one)
  end

  test "should get index" do
    get site_visitors_url
    assert_response :success
  end

  test "should get new" do
    get new_site_visitor_url
    assert_response :success
  end

  test "should create site_visitor" do
    assert_difference('SiteVisitor.count') do
      post site_visitors_url, params: { site_visitor: { \name: @site_visitor.\name, phonenumber: @site_visitor.phonenumber } }
    end

    assert_redirected_to site_visitor_url(SiteVisitor.last)
  end

  test "should show site_visitor" do
    get site_visitor_url(@site_visitor)
    assert_response :success
  end

  test "should get edit" do
    get edit_site_visitor_url(@site_visitor)
    assert_response :success
  end

  test "should update site_visitor" do
    patch site_visitor_url(@site_visitor), params: { site_visitor: { \name: @site_visitor.\name, phonenumber: @site_visitor.phonenumber } }
    assert_redirected_to site_visitor_url(@site_visitor)
  end

  test "should destroy site_visitor" do
    assert_difference('SiteVisitor.count', -1) do
      delete site_visitor_url(@site_visitor)
    end

    assert_redirected_to site_visitors_url
  end
end
