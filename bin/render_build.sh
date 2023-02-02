set -o errexit

bundle install
bundle exec rails assets:precompile
yarn install
yarn build:css
yarn build
bundle exec rake assets:clean
bundle exec rake db:migrate
bundle exec rake db:seed