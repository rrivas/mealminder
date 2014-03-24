require 'rubygems'
require 'action_mailer'

Dir['mailers/*.rb'].each { |file| require_relative file }

class MealMinder

end
