#!/bin/bash
## shibong slash bin slash bash ##
##########
# Author : Jayasri
# Date: 26/11/2024
#
# Version: v1
#
# This Script will Report the AWS Resource usage
#######################
#
#
#debugging command
#
#debugging means when it gives output it will include commands
set -x

#
# It will keep track of this resources
# AWS S3
# AWS EC2
# AWS IAM users
# Route 53


# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls > resourcetracker
# > name of the file to store the output

# list ec2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances --region us-east-2 | jq '.Reservations[].Instances[].InstanceId'

# list iam users
echo "Print list of iam users"
aws iam list-users

# list hosted zoneis
echo "Print list of hosted zones"
aws route53 list-hosted-zones | jq
