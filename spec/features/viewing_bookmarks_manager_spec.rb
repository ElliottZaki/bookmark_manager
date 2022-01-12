require 'pg'

feature 'Viewing homepage' do
    scenario 'visiting the homepage' do
        #assert
        visit('/')
        #arrange
        expect(page).to have_content 'Welcome to your Bookmark Manager, try typing /bookmarks in the URL'
    end
end

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com/');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com/');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com/');")
            
    visit('/bookmarks')
    #arrange
    expect(page).to have_content 'http://www.google.com/'
    expect(page).to have_content 'http://www.makersacademy.com/'
    expect(page).to have_content 'http://www.destroyallsoftware.com'        
  end
end

