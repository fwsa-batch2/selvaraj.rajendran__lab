# frozen_string_literal: true

require 'test_helper'

class MingleControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get mingle_index_url
    assert_response :success
  end
end
