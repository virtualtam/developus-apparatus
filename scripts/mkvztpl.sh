#!/bin/bash
#
# Creates an OpenVZ template from a container instance
#
# $1 ID of the container to use for template creation
# $2 Name of the template, without extension
ID=${1}
NAME=${2}

CUR_DIR=${PWD}

VZ_DIR=/var/lib/vz
ROOT_DIR=${VZ_DIR}/root/${ID}
TPL=${VZ_DIR}/template/cache/${NAME}.tar.gz

echo "> ${ID}: Cleaning package cache"
sudo vzctl restart ${ID}
sudo vzctl exec ${ID} apt-get clean
sudo vzctl stop ${ID}

echo "> ${ID}: Mounting filesystem"
sudo vzctl mount ${ID}

echo "> ${ID}: Cleaning up configuration"
cd ${ROOT_DIR}/etc
sudo rm -f hostname resolv.conf
sudo cp rc.local.first rc.local

cd ssh
sudo rm -f ssh_host_*

echo "> ${ID}: Archiving to ${TPL}"
cd ${ROOT_DIR}
sudo tar --numeric-owner -zcf ${TPL} .

echo "> ${ID}: Unmounting filesystem"
cd ${CUR_DIR}
sudo vzctl umount ${ID}
