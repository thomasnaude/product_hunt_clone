require 'test_helper'

class HomeTest < ActionDispatch::IntegrationTest
  test "loads correctly" do
    visit "/"
    assert_equal 200, page.status_code
    assert page.has_selector?('.product', count: Product.count)
  end
end
