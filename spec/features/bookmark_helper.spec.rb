def truncates_table
    #assert
    bookmarks = Bookmark.all
    #arrange
    expect(bookmarks).to include 'http://www.google.com/'
    expect(bookmarks).to include 'http://www.makersacademy.com/'
    expect(bookmarks).to include 'http://www.destroyallsoftware.com'
end