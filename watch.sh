#/bin/bash
while true
do
  printf "\033c"

  histograph-import --config ./histograph.nyc-neo4j.yml a b c
  sleep 3
done
