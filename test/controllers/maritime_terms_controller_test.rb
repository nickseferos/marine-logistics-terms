require 'test_helper'

class MaritimeTermsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maritime_term = maritime_terms(:one)
  end

  test "should get index" do
    get maritime_terms_url
    assert_response :success
  end

  test "should get new" do
    get new_maritime_term_url
    assert_response :success
  end

  test "should create maritime_term" do
    assert_difference('MaritimeTerm.count') do
      post maritime_terms_url, params: { maritime_term: { explination: @maritime_term.explination, term: @maritime_term.term } }
    end

    assert_redirected_to maritime_term_url(MaritimeTerm.last)
  end

  test "should show maritime_term" do
    get maritime_term_url(@maritime_term)
    assert_response :success
  end

  test "should get edit" do
    get edit_maritime_term_url(@maritime_term)
    assert_response :success
  end

  test "should update maritime_term" do
    patch maritime_term_url(@maritime_term), params: { maritime_term: { explination: @maritime_term.explination, term: @maritime_term.term } }
    assert_redirected_to maritime_term_url(@maritime_term)
  end

  test "should destroy maritime_term" do
    assert_difference('MaritimeTerm.count', -1) do
      delete maritime_term_url(@maritime_term)
    end

    assert_redirected_to maritime_terms_url
  end
end
