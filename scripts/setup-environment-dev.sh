#!/bin/sh

# This script sets up the Pryv guidelines build environment

# working dir fix
scriptsFolder=$(cd $(dirname "$0"); pwd)
cd $scriptsFolder/..

# check for well known prereqs that might be missing
hash git 2>&- || { echo >&2 "I require 'git'."; exit 1; }

echo "
Checking for NVM..."
if [ ! -d ~/.nvm ]
then
  echo "Not found, installing...
"
  git clone git://github.com/creationix/nvm.git ~/.nvm
else
  echo "OK"
fi

echo "
Syncing NVM...
"
. ~/.nvm/nvm.sh # this line should be added to your .bash_profile as well
nvm sync

nodeVersion=v0.10.23
echo "
Installing Node $nodeVersion if necessary...
"
nvm install $nodeVersion
nvm use $nodeVersion # the equivalent line should be added to your .bash_profile as well

echo "
Installing Node modules from 'package.json' if necessary...
"
npm install

if [ ! -d build ]
then
  echo "
Setting up 'build' folder for publishing to GitHub pages...
"
  git clone -b gh-pages git@github.com:pryv/guidelines.git build
fi

echo "


If no errors were listed above, the setup is complete.
See the README for more info on writing and publishing.
"
