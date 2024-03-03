FROM ubuntu:23.04

WORKDIR /jekyll

EXPOSE 4000

# 패키지 업데이트
RUN apt update

# Ruby 의존성 패키지 설치
RUN apt install -y ruby-full build-essential zlib1g-dev

# Ruby Gem 환경변수 설정
RUN echo '# Install Ruby Gems to ~/gems' >> ~/.profile
RUN echo 'export GEM_HOME="$HOME/gems"' >> ~/.profile
RUN echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.profile
RUN . ~/.profile

# jekyll 및 bundler 설치
RUN gem install jekyll bundler

CMD bundle install && bundle exec jekyll serve --watch --host 0.0.0.0
