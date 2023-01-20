
FROM ruby:3.1.2

# Instalar dependencias no SO

RUN useradd -ms /bin/bash hackathon
USER hackathon
WORKDIR /home/hackathon/app

COPY --chown=hackathon Gemfile* /

RUN gem install bundler:2.3.20

RUN bundle

COPY --chown=hackathon . .
