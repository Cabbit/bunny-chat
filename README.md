# Bunny Chat Service

## Setup(Mac OS)
Install docker for mac https://docs.docker.com/engine/installation/mac/ then run the following commands
* ```docker-compose build```
* ```docker-compose run app rake db:create```
* ```docker-compose run app rake db:migrate```

## Running Specs
```docker-compose run rake test```

## Before committing changes
```docker-compose run rake test``` Must pass
```docker-compose run rake rubocop``` Must pass

## Seeding the test database
```docker-compose run rake db:seed```

## Running the application
```docker-compose up```

## Creating new migrations
```run app bundle exec rake db:create_migration NAME=migration_name```

## Rebuilding database from scratch
```docker-compose run app rake db:drop && docker-compose run app rake db:create && docker-compose run app rake db:migrate```
