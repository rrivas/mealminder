require 'rubygems'
require 'action_mailer'
require 'mysql2'
require 'active_record'

@environment = ENV['RACK_ENV'] || 'development'
@dbconfig = YAML.load(File.read('config/database.yml'))
ActiveRecord::Base.establish_connection @dbconfig[@environment]

Dir['mailers/*.rb'].each { |file| require_relative file }

class MealMinder

end
