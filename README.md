# YogaPlaylist

[![CircleCI](https://circleci.com/gh/lortza/yogaplaylist.svg?style=svg)](https://circleci.com/gh/lortza/yogaplaylist)

# CodeClimate Quality Badge
[![Maintainability](https://api.codeclimate.com/v1/badges/7da95ba014377f246fe7/maintainability)](https://codeclimate.com/github/lortza/yogaplaylist/maintainability)

yogaplaylist is a personal practice app that builds yoga post playlists with a variable pose hold time between poses. Deployed privately at [https://yogaplaylist.herokuapp.com/](https://yogaplaylist.herokuapp.com)

* Ruby 2.5
* Rails 6
* Postgres

Temporary files from: https://freesound.org/people/margo_heston/packs/12534/


## Getting Started

* Fork & Clone
* Bundle
* `rake db:setup`
* `rake db:seed`
* run RuboCop: `rubocop`
* run tests: `bundle exec rspec`


### Linters
This project uses these linters in CI:
* [reek](https://github.com/troessner/reek)
* [rubocop](https://github.com/rubocop-hq/rubocop)
* [scss-lint](https://github.com/sds/scss-lint)

Run them locally on your machine like this:
```
bundle exec reek

bundle exec rubocop

bundle exec scss-lint app/assets/stylesheets/**.scss
```
