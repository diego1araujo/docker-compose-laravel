# docker-compose-laravel

A pretty simplified docker-compose workflow that sets up a LEMP network of containers for local Laravel development.

## Usage

- Make sure you have [Docker installed](https://www.docker.com/products/docker-desktop) on your system
- Clone this repo: `git clone https://github.com/diego1araujo/docker-compose-laravel.git`
- Add your entire Laravel project to the `www` folder
- From this cloned respository's root run `docker-compose up -d --build`
- Open up your browser of choice to [http://localhost](http://localhost) and you should see your Laravel app running as intended.

**Your Laravel app needs to be in the `www` directory first before bringing the containers up, otherwise the artisan container will not build, as it's missing the appropriate file.**

**New:** Three new containers have been added that handle **Composer**, **NPM**, and **Artisan** commands without having to have these platforms installed on your local computer. Use the following command templates from your project root, modifiying them to fit your particular use case:

- `docker-compose run --rm composer update`
- `docker-compose run --rm npm run dev`
- `docker-compose run --rm artisan migrate`
- `docker-compose run --rm artisan db:seed`
- `docker-compose run --rm artisan tinker`

Containers created and their ports (if used) are as follows:

- **nginx** - `:80`
- **mysql** - `:3306`
- **php** - `:9000`
- **phpmyadmin** - `:8080`
- **npm**
- **composer**
- **artisan**

NOTE: This repo was based on [aschmelyun/docker-compose-laravel](https://github.com/aschmelyun/docker-compose-laravel)
