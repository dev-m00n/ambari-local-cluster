FROM postgres:12.4

ARG POSTGRES_GID
ARG POSTGRES_UID

RUN userdel postgres && groupadd postgres -g $POSTGRES_GID && useradd -l -u $POSTGRES_UID postgres -g $POSTGRES_GID

