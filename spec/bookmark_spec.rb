require 'bookmark'

describe Bookmark do

    describe '.all' do
        it 'Returns all bookmarks using the .all method.' do
            #assert
            bookmarks = Bookmark.all
            #arrange
            expect(bookmarks).to include 'http://www.google.com/'
            expect(bookmarks).to include 'http://www.makersacademy.com/'
            expect(bookmarks).to include 'http://www.destroyallsoftware.com'
        end
    end

end


