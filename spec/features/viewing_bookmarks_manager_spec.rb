feature 'Viewing homepage' do
    scenario 'visiting the homepage' do
        #assert
        visit('/')
        #arrange
        expect(page).to have_content 'Welcome to your Bookmark Manager, try typing /bookmarks in the URL'
    end
end


feature 'Viewing bookmarks' do
    scenario 'visiting the index page' do
        #assert
        visit('/bookmarks')
        #arrange
        expect(page).to have_content 'http://www.google.com/'
        expect(page).to have_content 'http://www.makersacademy.com/'
        expect(page).to have_content 'http://www.destroyallsoftware.com'
    end
end

