# Happex

![GitHub Build Status](https://img.shields.io/github/workflow/status/AmiliaM/DataStorage2017/Build)
![GitHub Deploy Status](https://img.shields.io/github/workflow/status/AmiliaM/DataStorage2017/Deploy?label=deploy)
![Website](https://img.shields.io/website?down_color=lightgrey&down_message=offline&up_color=green&up_message=online&url=https%3A%2F%2Fhappex.bogodynamics.io)

An exploration of the connections between world happiness and various other factors.

Automatically deployed to [happex.bogodynamics.io](https://happex.bogodynamics.io/)

---

## Getting started

### Dependencies

Building Happex requires:
- Python 3.6 or newer
- Postgres
- Postgres build tools

### Building and Running Locally

Do this:

- `python3 -m venv .venv` (may need to remove the `.` on Windows)
- `source .venv/bin/activate`
- `pip install -r requirements.txt`

Then...

- `env FLASK_ENV=development flask run`

(or `export FLASK_ENV=development` and `flask run` as much as you want)

---

## Dataset

We used the [World Happiness](https://worldhappiness.report/ed/2019/) dataset.
