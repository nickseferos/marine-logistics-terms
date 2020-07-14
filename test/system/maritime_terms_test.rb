require "application_system_test_case"

class MaritimeTermsTest < ApplicationSystemTestCase
  setup do
    @maritime_term = maritime_terms(:one)
  end

  test "visiting the index" do
    visit maritime_terms_url
    assert_selector "h1", text: "Maritime Terms"
  end

  test "creating a Maritime term" do
    visit maritime_terms_url
    click_on "New Maritime Term"

    fill_in "Explination", with: @maritime_term.explination
    fill_in "Term", with: @maritime_term.term
    click_on "Create Maritime term"

    assert_text "Maritime term was successfully created"
    click_on "Back"
  end

  test "updating a Maritime term" do
    visit maritime_terms_url
    click_on "Edit", match: :first

    fill_in "Explination", with: @maritime_term.explination
    fill_in "Term", with: @maritime_term.term
    click_on "Update Maritime term"

    assert_text "Maritime term was successfully updated"
    click_on "Back"
  end

  test "destroying a Maritime term" do
    visit maritime_terms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Maritime term was successfully destroyed"
  end
end
