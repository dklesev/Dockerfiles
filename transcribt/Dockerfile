# Transcribt
# http://designbyjoel.com/transcribt/
# Use Transcribt to transcribe all that pesky audio, faster and privately.
# https://github.com/joelhans/Transcribt

from	ubuntu:precise

env		DEBIAN_FRONTEND noninteractive

run		echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list.d/precise.list  && apt-get update
run		apt-get install -y --no-install-recommends python-software-properties

run		add-apt-repository ppa:chris-lea/node.js && apt-get update

run		apt-get update && apt-get install -y git rubygems build-essential nodejs

run		gem install bundle --no-rdoc --no-ri

run		git clone git://github.com/joelhans/Transcribt.git

run 	sed -i "s/'redcarpet'/'redcarpet', '= 2.3.0'/" /Transcribt/Gemfile

run		cd Transcribt/ ; bundle install

expose	4567

cmd		cd Transcribt/ ; middleman server --verbose

