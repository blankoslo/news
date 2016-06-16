FROM ubuntu:latest

RUN apt-get update && apt-get install -y rlwrap wget

RUN wget --output-document=racket-install.sh \
    http://mirror.racket-lang.org/installers/6.5/racket-6.5-x86_64-linux.sh && \
    echo "yes\n1\n" | /bin/bash racket-install.sh

COPY . .

EXPOSE 8080
CMD ./run-news
