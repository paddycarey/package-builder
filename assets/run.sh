#!/bin/bash

cd /packages && fpm -s python -t deb "$1"
