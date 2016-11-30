feature 'creating links' do
  scenario 'button that adds a link' do
    visit '/links'
    click_button('add_link')
    fill_in('title', :with => 'Facebook')
    fill_in('url', :with => 'www.facebook.com')
    click_button('submit')
    expect(page).to have_content('Facebook')
  end

  scenario 'can add a tag to a link' do
    visit '/links'
    click_button('add_link')
    fill_in('title', :with => 'Facebook')
    fill_in('url', :with => 'www.facebook.com')
    fill_in('tag', :with => 'social')
    click_button('submit')
    link = Link.first
    expect(link.tags.map(&:tag)).to include('social')
  end
end
