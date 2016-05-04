FROM playterminal/game-base

RUN apt-get update && \
  apt-get --no-install-recommends -y install nethack-console \
  && apt-get clean

ENV GAME_BINARY nethack

