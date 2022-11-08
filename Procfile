# root/Procfile
web: bin/rails server -p ${PORT:-3000} -e $RAILS_ENV
release: bundle exec rails db:migrate
