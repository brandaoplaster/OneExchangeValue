## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [License](#license)
* [Contact](#contact)


## About The Project

Application that aims to convert coins from one country to another including bitcoin.
Click here for demonstration [Demo](https://oneexchangevalue.herokuapp.com/) 

### Built With

* Docker
* Docker-composer
* Rails 5.2
* Ruby-2.5.1
* Coffeescript
* Node
* Rspec 3.5

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them

```
Docker version 18.09.6
```
```
docker-compose version 1.22.0
```
### Installing  
follow the sequence of steps below.

```
1 - docker-compose build
2 - docker-compose run --rm app bundle install
```
Add no databases => host: postgres user: postgres
```
3 - docker-compose run --rm app bundle exec rails db:create db:migrate
4 - docker-compose up

```

## Deployment

The application is hosted in [heroku](https://www.heroku.com/) using the [codeship](http://codeship.com) to perform continuous integration.


## Author

* **Brandao Plaster**


## Contact

Brandao Plaster - [@BrandaoPlaster](https://twitter.com/BrandaoPlaster) - 

Project: [https://github.com/brandaoplaster/OneExchangeValue](https://github.com/brandaoplaster/OneExchangeValue)


## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).