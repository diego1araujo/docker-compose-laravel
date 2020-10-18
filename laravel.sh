#!/bin/bash

# Clean up folders
rm -rf mysql/
rm -rf www/
mkdir mysql

# Rename .env
cp .env.example .env

# Laravel fresh install
composer create-project --prefer-dist laravel/laravel www
