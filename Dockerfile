FROM docker.io/antora/antora:3.0.0

COPY ./entrypoint.sh /entrypoint.sh

# install extra antora generators for documentation search and plantuml rendering
RUN npm i -g antora-site-generator-lunr asciidoctor-plantuml

ENTRYPOINT ["/entrypoint.sh"]
