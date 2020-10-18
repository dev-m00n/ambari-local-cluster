FROM postgres:12.4

ARG POSTGRES_GID
ARG POSTGRES_UID

RUN groupmod -og $POSTGRES_GID postgres && usermod -u $POSTGRES_UID postgres
