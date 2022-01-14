feature 'Delete a bookmark' do
  scenario 'a bookmark is deleted' do
    visit '/bookmarks'
    fill_in 'URL', with: 'http://bbc.co.uk/'
    fill_in 'Title', with: 'BBC'
    click_button 'Submit'

    expect(page).to have_link 'BBC', href: 'http://bbc.co.uk/'

    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/bookmarks'
    expect(page).to_not have_link 'BBC', href: 'http://bbc.co.uk/'
  end
end