module ApplicationHelper

  group :development do
   gem 'sqlite3'
end

group :test, :production do
    gem 'pg'
end

end
