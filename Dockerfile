FROM ruby
RUN apt-get -y update && apt-get -y install libicu-dev && \
    gem install gollum && \
    gem install github-markdown org-ruby

VOLUME /wiki
WORKDIR /wiki
CMD ["gollum", "--config",  "/config.rb"]
EXPOSE 4567

