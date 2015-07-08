require 'spec_helper'

describe 'user can create cards', type: :feature do
  # An example integration spec, this will only be run if ENV['BROWSER'] is
  # specified.  Current values for ENV['BROWSER'] are 'firefox' and 'phantom'
  it 'creates card' do
    visit '/'

    click_button "New Card"
    fill_in "Front", with: "Front of card"
    fill_in "Back", with: "Back of card"
    click_button "Save Card"

    expect(page).to have_content('Front of card')
  end
end
