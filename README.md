# FastAPI Boilerplate

A microservice skeleton so you don't need to write it yourself ever again

# Constants to search for

Search for `service_name` or `SERVICE_NAME` in the entire repo (including yaml files) and replace it with the corresponding service name.

## Environment Variables

To run this project, you will need to add the environment variables that are in the `.env.dist` to a `.env` file in the root directory of the project.

## Installation

To install this project you can use the docker-compose option where you have to run:

```bash
  make local_dev
```

Alternatively, you can setup everything manually.

```bash
  python3 -m venv .venv
  source venv/bin/activate
  python3 -m pip install -r requirements.txt
  make run
```

## Install GitHooks

Execute in your local environment:

```bash
pre-commit install
```

## Running Tests

To run tests, run the following command

```bash
make tests
```

## Tech Stack

**Server:** Python 3.10, FastAPI

Scripts inside MakeFile:
lint: will lint all your code
tests: Will run all your tests
run: To execute locally
local_dev: will setup the app and will run it locally
