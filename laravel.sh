#!/bin/bash

# Clean
rm mysql/.gitkeep
rm www/.gitkeep

# Go to www folder
cd www/

# Laravel fresh install
composer create-project --prefer-dist laravel/laravel .
