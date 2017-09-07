rails new floapp 






Gemfile

gem 'rails_admin', '~> 1.2'

bundle install

bin/rails g rails_admin:install


bin/rails g scaffold Category title description

bin/rails g scaffold Widget title:string description:string notes:text category:belongs_to

bin/rails db:migrate
bin/rails db:seed

bin/rails assets:precompile RAILS_ENV=production

after adding the following line to production.rb

config.assets.precompile += %w[active_admin.css active_admin.js

It will say : 

==> bin/rails assets:precompile RAILS_ENV=production
rails aborted!
Devise.secret_key was not set. Please add the following to your Devise initializer:

config.secret_key = '4db88df3ff216f27b5de05015ed5ab7633a095c2444d31af765cdbedd0e6d51b6684f7c908efc51bb035d32a7fd73333404fb026634dac33151e4b9996fbe6c3'

Add that line to config/initializers/devise.rb

## Helpful Links

http://onebitcode.com/english-rails-admin/

https://github.com/activeadmin/activeadmin/wiki

