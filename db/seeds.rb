require 'faker'
require_relative '../config/application'

50.times do |fake_task_description|
  Task.create(:description => Faker::Company.bs)
end




