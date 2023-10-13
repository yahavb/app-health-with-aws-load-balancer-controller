#!/bin/bash -x
export ARCH=$(uname -m)
aws cloudwatch put-metric-data --metric-name node_instance_arch --namespace ${DEPLOY_NAME} --value $ARCH
echo $?
python ./manage.py runserver 0.0.0.0:8000
