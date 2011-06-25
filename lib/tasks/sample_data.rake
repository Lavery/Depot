namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    99.times do |i|
      name  = Faker::Name.name
      email = "example-#{i}@example.com"
      address = "#{i} Main Street"
      Order.create(:name => name,
                   :address => address,
                   :email => email,
                   :pay_type => "Check")
    end
  end
end
