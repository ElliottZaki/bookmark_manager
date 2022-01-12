require 'bookmark'

describe Bookmark do

    describe '.all' do
        it 'Returns all bookmarks using the .all method.' do
            connection = PG.connect(dbname: 'bookmark_manager_test')
            #assert
            connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com/');")
            connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com/');")
            connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com/');")
            
            bookmarks = Bookmark.all
            #arrange
            expect(bookmarks).to include 'http://www.google.com/'
            expect(bookmarks).to include 'http://www.makersacademy.com/'
            expect(bookmarks).to include 'http://www.destroyallsoftware.com/'
        end
    end
end
    




