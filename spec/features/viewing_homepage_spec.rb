feature 'Viewing homepage' do
    scenario 'visiting the homepage' do
        #assert
        visit('/')
        #arrange
        expect(page).to have_content 'Welcome to your Bookmark Manager, try typing /bookmarks in the URL'
    end
end