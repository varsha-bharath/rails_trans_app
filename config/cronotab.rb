# config/cronotab.rb
require 'rake'
# Be sure to change AppName to your application name!
TransportationApp::Application.load_tasks

class Test
  def perform
    Rake::Task['crono:alert'].invoke
  end
end

Crono.perform(Test).every 5.seconds

# cronotab.rb — Crono configuration file
#
# Here you can specify periodic jobs and schedule.
# You can use ActiveJob's jobs from `app/jobs/`
# You can use any class. The only requirement is that
# class should have a method `perform` without arguments.
#
# class TestJob
#   def perform
#     puts 'Test!'
#   end
# end
#
# Crono.perform(TestJob).every 2.days, at: '15:30'
#
