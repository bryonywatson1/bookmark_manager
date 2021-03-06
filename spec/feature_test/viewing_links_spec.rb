require 'spec_helper'



feature "creating a link" do

   scenario "I can see links on page" do

    Link.create(url: 'google.com', title: 'Google')
     visit '/links'

    expect(page.status_code).to eq 200
    expect(page).to have_content('Google')
  end
end
