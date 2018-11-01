#!/bin/bash

repo='https://github.com/sashikamw/iam-scenario-tests.git'
TEST_DIR='iam-scenario-tests'
DIR=$2
export DATA_BUCKET_LOCATION=$DIR

git clone $repo
cd $TEST_DIR
mvn clean install

echo 'Copying surefire-reports .....'
cp -r modules/integration/tests-integration/tests-backend/target/surefire-reports ${DIR}
ls $DIR