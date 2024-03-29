# Search App

> A realtime search application where you can search for articles. 

## Built With

- **Languages & Technologies:**
  - Ruby on Rails
  - Postgres
  - Devise
  - JavaScript
  - HTML & Sass
- **Conventions and Methodologies:**
  - BEM 

## Live Demo

Link to live demo[coming soon]()

**Note: Unfortunately, it wasn't possible to deploy on Heroku or Render as they ended the free tier**


## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/downloads/)
- [Rails](https://rubyonrails.org/)
- [Postgres](https://www.postgresql.org/) installed locally or [Docker](https://www.docker.com/) to run a container with Postgres installed

### Setup

Download the code from this repository, by following these two steps:
  - Click on the ``Code`` button, above the files list.
  - Click on the ``Donwload ZIP`` button to download the code.

### Install

#### 1- Install the project dependencies

1.1- Install the [Ruby Bundler](https://bundler.io/) using this command on the root project's directory:
```console
$ gem install bundler
```

1.2- Then, install all the project dependencies using this command:

```console
$ bundle install
```

#### 2- Set up the project's database

2.1- If you have Docker installed in your computer, create a Postgres image from the Dockerfile in this project using this command on the root project's directory:

```console
$ docker build -t pg-db .
```

2.2- Create and run a new Docker container using the Postgres image created in the last step:

```console
$ docker run --name rails-blog-db -p 5432:5432 -d pg-db
```

#### 3- Build the project's database schema

3.1- Run the database migrations to build the project's database with the correct tables:

```console
$ rails db:migrate
```

3-2- Populate the application with sample data:

```console
$ rails db:seed
```

### Usage

To use this application, run this command on the root project's directory: 

```console
$ rails s
```

## Tests

To run unit and integration tests, run this command on the root project's directory: 

```console
$ rspec
```

## Authors

👤 **Okongo Derrick**

- GitHub: [@derrick](https://github.com/derrick1451)
- Twitter: [@derrick](https://twitter.com/derrickHayle)
- LinkedIn: [derrick](https://linkedin.com/in/okongo-derrick)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/derrick1451/Search_app/issues).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is MIT licensed.