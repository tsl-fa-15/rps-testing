require 'rails_helper'

RSpec.feature "Games", type: :feature do
  it 'contains three clickable images for rock, paper and scissors' do
    visit(root_url)
    expect(page).to have_selector('a.rock img[src*="http"]')
    expect(page).to have_selector('a.paper img[src*="http"]')
    expect(page).to have_selector('a.scissors img[src*="http"]')
  end

  it 'takes users to a results page when they make a choice' do
    visit(root_url)
    find("a.rock").click

    expect(page).to have_content("You selected")
  end
end
