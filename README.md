![notebooks](designs/notebooks-github-card.svg)

# Notebooks

Some of my data exploration with Jupyter Notebooks.

## Getting Started

Setting up the conda environment:

```shell
λ conda env create -f environment.yml
```
Activate the conda environment:

```shell
λ conda activate notebooks
```

Run Jupyter Lab:

```
λ jupyter lab
```

You can add new packages to the `./environment.yml` file. You'll then need to
update the conda environment:

```shell
λ conda env update -f environment.yml
```

