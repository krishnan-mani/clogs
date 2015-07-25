#!/usr/bin/env bash

# Create CNAME record for app

export SCRIPT_NAME="$0"
if [ $# -ne 5 ]
then
    echo "Missing arguments"
    echo "Usage: $SCRIPT_NAME profile fqdn points-to hosted-zone-id path-to-change-set"
    exit 1
fi

export FQDN="$2"
export POINTS_TO="$3"
export HOSTED_ZONE_ID="$4"
export PATH_TO_CHANGE_SET="$5"

export REGION_NAME="eu-west-1"

cp cname_resource_record_set.json.template cname_resource_record_set.json
sed -e "s/FQDN/${FQDN}/" cname_resource_record_set.json.template > cname_resource_record_set.json.1
sed -e "s/POINTS_TO/${POINTS_TO}/" cname_resource_record_set.json.1 > cname_resource_record_set.json
rm cname_resource_record_set.json.1

aws --profile $1 route53 change-resource-record-sets --hosted-zone-id ${HOSTED_ZONE_ID} --change-batch file://${PATH_TO_CHANGE_SET}/cname_resource_record_set.json
