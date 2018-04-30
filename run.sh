#!/usr/bin/env bash

REPO_DIR="multiway-algorithms"

if [ ! -d "$REPO_DIR" ]; then
    echo -e "Local multiway-algorithm repository not found. Cloning now."
    git clone https://github.com/waikato-datamining/multiway-algorithms -b develop
    cd ${REPO_DIR}
else
    echo -e "Updating local multiway-algorithm repository"
    cd ${REPO_DIR}
    git pull
fi

echo -e "Installing multiway-algorithm maven package locally."
mvn install -Dmaven.test.skip=true
cd ..

echo -e "Starting Main class"
mvn install exec:java