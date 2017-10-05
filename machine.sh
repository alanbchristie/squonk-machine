#!/bin/bash

# Echo commands and exit if anything fails...
set -xe

# All-in-one vagrant script that loads modules form the ansible galaxy
# and then initiates a vagrant build.
#
# Alan Christie
# October 2017

ansible-galaxy install -r requirements.yml
vagrant up
