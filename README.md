# Event Dark

Example app for demonstrating BDD in a Rails application. Application is a simplistic clone of the EventBright service.

## Presentation

Developed to supplement [TDD/BDD Presentation](https://docs.google.com/presentation/d/1f9lnPT2BB9EZTDsxzN5a783PnUqqLxPyNtYMdVHqKRE/edit?hl=en_US) by Pete Brown of Draker Labs given at the [Burlington Web App Group](http://btvwag.com/) on Oct. 26th, 2011.

## Getting started

To download and play around with this application you will need to have a functional Ruby/Rails environment in a unix based OS.

* [Install Ruby](http://www.ruby-lang.org/en/downloads/) - RVM recommended
* Install RubyGems (installed by RVM)
* Install Bundler `gem install bundler`
* Install MySQL

Once you have your development environment ready simply:

1. Clone this repo
2. Change into the application directory (probably EventDart)
3. Copy `config/database.yml.example` to 'config/database.yml` and edit with your DB credentials.
4. Run `bundle install`
5. Run `rake db:create:all`
6. Run cucumber scenarios: `cucumber`
7. Run rspec unit tests: `rspec spec/`
8. Begin Red-Green-Refactor process!


