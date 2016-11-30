feature 'creating links' do
  scenario 'button that adds a link' do
    visit '/links'
    click_button('add_link')
    fill_in('title', :with => 'Facebook')
    fill_in('url', :with => 'www.facebook.com')
    click_button('submit')
    expect(page).to have_content('Facebook')
  end
end
