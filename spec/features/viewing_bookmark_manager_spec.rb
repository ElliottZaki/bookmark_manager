require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can see all their favourite bookmarks' do
  connection = PG.connect(dbname: 'bookmark_manager_test')

    # # Add the test data
    # connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.google.com/');")
    # connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.makersacademy.com/');")
    # connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.destroyallsoftware.com');")

    Bookmark.create(url: 'http://www.google.com/')
+   Bookmark.create(url: 'http://www.makersacademy.com/')
+   Bookmark.create(url: 'http://www.destroyallsoftware.com')

            
    visit('/bookmarks')
    #arrange
    expect(page).to have_content 'http://www.google.com/'
    expect(page).to have_content 'http://www.makersacademy.com/'
    expect(page).to have_content 'http://www.destroyallsoftware.com'        
  end
end




