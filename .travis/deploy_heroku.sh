#!/bin/sh
echo "Installing Heroku toolbelt"
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

echo "Installing heroku-container-registry plugin"
heroku plugins:install heroku-container-registry

echo "Login to Heroku Docker Registry"
docker login -e _ -u _ --password=3a9c5894-1a27-45b5-be6e-1d3dbff6111d registry.heroku.com

echo "Pushing application docker container to Heroku...."
heroku container:push web --app veille-ci-cd
