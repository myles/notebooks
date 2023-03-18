![notebooks](designs/notebooks-github-card.svg)

# Notebooks

Some of my data exploration with [Jupyter Notebooks](https://jupyter.org).

## Directory Structure

There are two top level directories where are store Notebooks, `./archive/` and `./wip/`.

### `./archive/`

The archive directory is where I store notebooks that will be published on the Internet at [notebooks.myles.engineer](https://notebooks.myles.engineer/).

### `./wip/`

The WIP (work in progress) directory is where I store notebooks I'm currently in the process of build. These might be push to the archive directory in the future or they may stay in here forever.

### Project's Directory Structure

A project's structure will follow this outline:

- `./<project_slug>/`
  - `_metadata.yml`: a YAML file containing some metadata about the project
  - `index.ipynb`: the main notebook that will be used when publishing on the Internet
  - `*.(ipynb|py)`: supporting notebooks or Python files
  - `data/`
    - `source/`: stores any source data
    - `interim/`: stores interim data that is shared across notebooks.
    - `output/`: anything data or image files that has come from the result of the exportation
