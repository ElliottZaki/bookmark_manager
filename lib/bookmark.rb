require 'pg'

class Bookmark 

    def self.all
        connection = if ENV['ENVIRONMENT'] == 'test'
            PG.connect(dbname: 'bookmark_manager_test')
        else
            PG.connect(dbname: 'bookmark_manager')
        end
        
        bookmarks = connection.exec('SELECT * FROM bookmarks;')
        bookmarks.map { |bookmark| bookmark['url'] }
    end
end