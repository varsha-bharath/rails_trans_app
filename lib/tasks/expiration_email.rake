namespace :expiration do
  task :email => :environment do
    puts "#{Time.now} - Success!"
  end
end