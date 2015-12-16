# Histograph Live Demo

Live coding demo of https://github.com/histograph/ and https://github.com/graphmalizer.

Made for http://www.meetup.com/nycneo4j/events/226972837/.

Slides: http://bertspaan.nl/nypl-talks/nyc-neo4j

## Usage

Install Elasticsearch, Neo4j, Histograph: https://github.com/histograph/installation

Delete existing data:

    rm -rf ./histograph
    curl -XDELETE 'http://localhost:9200/*'
    redis-cli FLUSHALL

And execute the following Cypher queries:

    MATCH (n) OPTIONAL MATCH (n)-[e]-() DELETE e, n RETURN DISTINCT true;
    CREATE CONSTRAINT ON (n:_) ASSERT n.id IS UNIQUE

Start Core, API, and imports, with shell scripts:

    ./core.sh
    ./api.sh
    ./watch.sh

Go to [http://localhost:7474/](http://localhost:7474/), and keep executing Cypher queries:

    MATCH (p) WHERE p:_ OR p:`=` RETURN p
