FROM ruby:3.1

RUN apt-get update
RUN apt-get install -y curl apt-transport-https wget
RUN wget -qO - https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -y nodejs yarn openssl default-mysql-client vim
RUN mkdir /myapp
WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
COPY . /myapp

RUN yarn install
RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["bin/dev"]