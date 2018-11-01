#!/bin/bash

repo='https://github.com/sashikamw/iam-scenario-tests.git'
TEST_DIR='iam-scenario-tests'
DIR=$2
export DATA_BUCKET_LOCATION=$DIR
FILE1=${DIR}/infrastructure.properties
FILE2=${DIR}/testplan-props.properties


git clone $repo
cd $TEST_DIR
mvn clean install

cp -r modules/integration/tests-integration/tests-backend/target/surefire-reports ${DIR}
