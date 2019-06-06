FROM ruby:2.5.1

RUN apt-get update && apt-get install -y postgresql-client docker-compose nodejs build-essential vim zsh ranger htop tmux && sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && chsh -s /bin/zsh

WORKDIR /app
COPY Gemfile* ./
RUN gem install bundler
RUN bundle install
COPY . .

ENTRYPOINT ["bin/docker-entrypoint.sh"]
CMD ["rails", "server", "-b", "0.0.0.0"]
RUN bin/rails db:migrate

