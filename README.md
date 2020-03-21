# php-dev-kit

This package contains all the configurations and frameworks that can be useful when developing a backend PHP project.
Caveat: `heroku` CLI is required for this project.
Everything is already shipped-in : testing (with PHPUnit), server (with Heroku), building script, ...

# Installation

`git clone git@github.com:matthieujabbour/php-dev-kit.git`

`composer install`

# Build and deploy for production

Perform a merge request to `master` branch.

# Maintenance

In order to keep this package up-to-date, dependencies updates should be checked and updated regularily, using the `composer outdated -D` and `composer update --with-dependencies` commands. Here is the list of repositories changelogs to watch for updates:

- [phpunit/phpunit](https://github.com/sebastianbergmann/phpunit/releases)
- [spatie/phpunit-watcher](https://github.com/spatie/phpunit-watcher/releases)

# License

[MIT](http://opensource.org/licenses/MIT)

Copyright 2016 - present, Matthieu Jabbour.
