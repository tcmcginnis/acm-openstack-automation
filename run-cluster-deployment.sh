#!/bin/bash
#
# Console interface for ACM Cluster Deployment playbook
#
# Can be run interactively or by passing the following options
#
# "run-cluster-deployment.sh [datacenter] [cloud] [project]"
#
datacenter=$1
cloud=$2
project=$3
shift 3
extraoptions="$*"

THISDIR=`dirname $0`
cd $THISDIR

if [ "$*" = "-h" ]; then
   echo -e "\n\n    USAGE: `basename $0` [datacenter] [cloud] [project]\n\n     NOTE: This script is interactive so all missing options will be prompted.\n\n"
   exit 1
fi

echo "Welcome to the ACM Custer Deployment playbook console interface"
echo ""

while [ "$datacenter" = "" ]
   do
      read -p "Please enter the Openstack DataCenter name here: " datacenter
done
echo -e "\nUsing Openstack Datacenter \"$datacenter\"...\n\n"

while [ "$cloud" = "" ]
   do
      read -p "Please enter the Openstack Cloud name here: " cloud
done
echo -e "\nUsing Openstack Cloud \"$cloud\"...\n\n"

while [ "$project" = "" ]
   do
      read -p "Please enter the Openstack Project name here: " project
done
echo -e "\nUsing Openstack Project \"$project\"...\n\n"

echo -e "\n\nDatacenter: $datacenter\n\n     Cloud: $cloud\n\n   Project: $project\n\n"
while [ "$ans" != "y" -a "$ans" != "n" ]
do
   read -p "Is this correct? {y/n}: " ans
   if [ "$ans" = "n" ]; then
      echo -e "\n\nVery well.  Nothing is deployed."
      exit 10
   fi
done


echo "ansible-playbook `pwd`/full-deployment.yaml -e osp_datacenter=$datacenter -e osp_cloud=$cloud -e osp_project=$project $extraoptions"
set -x
         ansible-playbook ./full-deployment.yaml -e osp_datacenter=$datacenter -e osp_cloud=$cloud -e osp_project=$project $extraoptions

