#!/bin/bash

INSTANCE_IDS=$(aws ec2 describe-instances \
    --filters "Name=tag:StigStart,Values=true" \
    --query "Reservations[*].Instances[*].InstanceId" \
    --profile govcloud \
    --output json)

# Use jq to extract instance IDs in the correct format
INSTANCE_IDS=$(echo $INSTANCE_IDS | jq -r '.[] | join(" ")')

if [ -n "$INSTANCE_IDS" ]; then
    aws ec2 start-instances --instance-ids $INSTANCE_IDS --profile govcloud
    echo "Starting instances: $INSTANCE_IDS"
else
    echo "No instances found with the tag StigStart=true"
fi
