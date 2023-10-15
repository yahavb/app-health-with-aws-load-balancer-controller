#!/bin/bash 
export ARCH=$(uname -m)
#aws cloudwatch put-metric-data --metric-name ${ARCH} --namespace ${DEPLOY_NAME} --value 1
#echo cloudwatch put ret: $?
./pub_arch_inst_cw.sh &
python ./manage.py runserver 0.0.0.0:8000
