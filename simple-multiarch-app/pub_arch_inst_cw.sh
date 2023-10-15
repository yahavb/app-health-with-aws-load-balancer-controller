#!/bin/bash -x
export ARCH=$(uname -m)
while true
do
  aws cloudwatch put-metric-data --metric-name ${ARCH} --namespace ${DEPLOY_NAME} --value 1
  echo cloudwatch put ret: $?
  sleep 60
done
