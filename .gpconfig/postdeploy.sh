#!/bin/bash

echo "This is an example post-deploy script. Run as site system user"

# Site level access
# - Runs after files have been deployed 
# - Runs as site's system user
# - Runs from within site /.gpconfig dir

echo "In: $GP_GIT_RELEASE_PATH"
ls -l $GP_GIT_RELEASE_PATH

echo "--------------------------"

if [[ -n $GP_GIT_SITE_BUILD ]]; then

  echo "This is a site build rebuilt binds"

  echo "In: $GP_GIT_SITE_WEBROOT_PATH"
  ls -l $GP_GIT_SITE_WEBROOT_PATH

  echo "--------------------------"

  echo "mkdir ${GP_GIT_SITE_PATH}/public/postdeploy"
  echo "touch ${GP_GIT_SITE_PATH}/public/postdeploy/file"

  mkdir -p ${GP_GIT_SITE_PATH}/public/postdeploy
  touch ${GP_GIT_SITE_PATH}/public/postdeploy/file
  ls -l ${GP_GIT_SITE_PATH}/public/postdeploy

else

  echo "This is a server MT code deploy rebuilt binds"

fi

echo "--------------------------"


