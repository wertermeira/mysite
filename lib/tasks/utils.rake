namespace :utils do
  desc "TODO"
  task user: :environment do

    User.create(email: "wertermeira@gmail.com", password: "123456", password_confirmation: "123456")

  end

end
