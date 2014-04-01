require 'rubygems'
require 'action_mailer'
require 'sqlite3'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database  => "db/database.sqlite3"
)

Dir['mailers/*.rb'].each { |file| require_relative file }

class MealMinder

end
