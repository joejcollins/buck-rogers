# buck-rogers MkDocs/Entangled

[![Entangled badge](https://img.shields.io/badge/entangled-Use%20the%20source!-%2300aeff)](https://entangled.github.io/)

For full documentation visit [mkdocs.org](https://www.mkdocs.org) and [entangled.github.io](https://entangled.github.io).

## Commands

* `mkdocs new [dir-name]` - Create a new project.
* `mkdocs serve` - Start the live-reloading docs server.
* `mkdocs build` - Build the documentation site.
* `mkdocs -h` - Print help message and exit.

* `entangled tangle` - Extract source files.
* `entangled stitch` - Merge changes into markdown.
* `entangled -h` - Print help message and exit.

## Help

* [Entangled](https://entangled.github.io)
* [MkDocs](https://www.mkdocs.org)
* [MkDocs Material theme](https://squidfunk.github.io/mkdocs-material/)
* [Entangled plugin for MkDocs](https://entangled.github.io/mkdocs-plugin/)


## First time running
You need Python >= 3.12 and [`uv`](https://docs.astral.sh/uv/) installed.

```shell
uv sync
```

### Steps to reproduce

Follow the [Entangled MkDocs plugin setup instructions](https://entangled.github.io/mkdocs-plugin/setup/).

## Run

```
uv run mkdocs serve
```

## Project layout

    mkdocs.yml      # The MkDocs configuration file.
    entangled.toml  # The Entangled configuration file.
    docs/
        index.md    # The documentation homepage.
        ...         # Other markdown pages, images and other files.

