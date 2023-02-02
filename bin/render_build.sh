set -o errexit

bundle install
bundle exec rake assets:precompile
yarn install
yarn build:css
yarn build
bundle exec rake assets:clean
bundle exec rake db:migrate