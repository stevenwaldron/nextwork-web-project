#!/bin/bash
set -e

APP_NAME=nextwork-web-project
TOMCAT_WEBAPPS=/usr/share/tomcat/webapps

echo "Stopping services if running..."

sudo systemctl stop httpd || true
sudo systemctl stop tomcat || true

echo "Removing old Tomcat deployment..."

sudo rm -f  $TOMCAT_WEBAPPS/$APP_NAME.war
sudo rm -rf $TOMCAT_WEBAPPS/$APP_NAME

echo "ApplicationStop completed successfully."
