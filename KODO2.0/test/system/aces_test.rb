# frozen_string_literal: true

require 'application_system_test_case'

class AcesTest < ApplicationSystemTestCase
  setup do
    @ace = aces(:one)
  end

  test 'visiting the index' do
    visit aces_url
    assert_selector 'h1', text: 'Aces'
  end

  test 'creating a Ace' do
    visit aces_url
    click_on 'New Ace'

    fill_in 'Name', with: @ace.name
    click_on 'Create Ace'

    assert_text 'Ace was successfully created'
    click_on 'Back'
  end

  test 'updating a Ace' do
    visit aces_url
    click_on 'Edit', match: :first

    fill_in 'Name', with: @ace.name
    click_on 'Update Ace'

    assert_text 'Ace was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Ace' do
    visit aces_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Ace was successfully destroyed'
  end
end
