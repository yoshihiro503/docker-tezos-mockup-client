ARG TEZOS_VERSION=7.1
FROM proofninja/tezos-client:${TEZOS_VERSION}

RUN eval $(opam env) && tezos-client list mockup protocols > protocols.txt

ENV MOCKUP_BASE_DIR "./mockup-base-dir"

RUN mkdir $MOCKUP_BASE_DIR

RUN eval $(opam env) && tezos-client --protocol $(head -n 1 protocols.txt) --base-dir $MOCKUP_BASE_DIR create mockup

RUN echo 'alias mockup-client="tezos-client --mode mockup --base-dir $MOCKUP_BASE_DIR"' > ~/.bash_aliases
