FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.2.7

RUN gem install ey_db_backup --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ey_db_backup"]
CMD ["--help"]
