#!/bin/bash

export _uid=$(id -u)
export _gid=$(id -g)

_branch="master"
_unreal_user=""
_unreal_pass=""

help()
{
   # Display Help
   echo "Generate docker for CARLA simulator development."
   echo
   echo "Syntax: build_carla_devel -h | [-b BRANCH] -u UNREAL_USER -p UNREAL_PASS "
   echo "options:"
   echo "h     Print this Help."
   echo "b     carla branch (default master)."
   echo "u     unreal github user."
   echo "p     unreal github password."
   echo
}

check_params()
{
    
    if [[ ! -z "$_unreal_user" ]] && [[ ! -z "$_unreal_pass" ]]
    then
        return 0
    else
        return 1
    fi
}


while getopts ":hb:u:p:" option; do
    case $option in
        h) # display Help
            help
            exit;;
        b) # branch
            _branch=${OPTARG}
            ;;
        u) # unreal user
            _unreal_user=${OPTARG}
            ;;
        p) # unreal pass
            _unreal_pass=${OPTARG}
            ;;
        *) # incorrect option
            echo "Error: Invalid option"
            help
            exit;;
    esac
done



if check_params 
then

docker build -t carla_devel \
--build-arg USER=$USER \
--build-arg UID=$_uid \
--build-arg GID=$_gid \
--build-arg unreal_user=$_unreal_user \
--build-arg unreal_pass=$_unreal_pass \
--build-arg carla_branch=$_branch \
build/
else
    echo "not enought parameters"
    help
    exit
fi

