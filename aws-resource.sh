#!/bin/bash


#######################
# Auther : Manoj Yadav
# Date : 04 July  2023


# This script will report the AWS resources usage
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

###########################################################

# List S3 buckets
echo " List of all S3 buckets"
aws s3 ls >resourceTracker

# list EC2 Instances
echo " List of all EC2 instances"

#aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceType' >>resourceTracker

# list lambda
echo "list of all lambda"

aws lambda list-functions >>resourceTracker

# list IAM users
echo "List of all IAM users"
aws iam  list-users >>resourceTracker

