require 'rubygems'
require 'action_mailer'
require 'mysql2'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'mysql2',
  database: 'mealminder',
  user: 'root',
  host: 'localhost'
)

Dir['mailers/*.rb'].each { |file| require_relative file }

class MealMinder

end
