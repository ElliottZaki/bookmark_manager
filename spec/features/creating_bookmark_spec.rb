feature 'creating a new bookmarks' do

    scenario 'The user can add a new bookmark to their favourites list' do
        #arrange
        visit('/bookmarks')
        fill_in('url', with: 'https://www.bbc.co.uk/')
        fill_in('title', with: 'BBC')
        click_on 'Submit'
        #assert
        expect(page).to have_link('BBC' ,href: 'https://www.bbc.co.uk/')
    end
end



