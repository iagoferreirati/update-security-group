#!/bin/bash

# Set profile
profile="pessoal"
cidr="10.200.0.0/16"
Description='ALLOW VPC KUBERNETES'
port="-1"

sg=`aws ec2 describe-security-groups --profile $profile | grep  "GroupId" | sed -e 's/            "GroupId": "//g' | sed -e 's/",//g' |  sed -e 's/                //g' > list.txt`
list=`cat list.txt`
# echo $list

for i in $list
do
aws ec2 authorize-security-group-ingress --profile $profile --group-id $i --ip-permissions IpProtocol=all,FromPort=$port,ToPort=$port,IpRanges="[{CidrIp=$cidr,Description='$Description'}]"
done