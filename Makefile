.PHONY: setup
setup: pyproject.toml
	poetry check
	poetry install

.PHONY: lint
lint:
	poetry run black --check .

.PHONY: lintfix
lintfix:
	poetry run black .

.PHONY: jupyter-lab
jupyter-lab:
	poetry run jupyter lab .

UPDATE_NOTEBOOKS = archive/2023/03-March/04/us-interest-rates/index.ipynb

.PHONY: jupyter-nbconvert
jupyter-nbconvert: ${UPDATE_NOTEBOOKS}
	poetry run jupyter nbconvert --execute --to notebook --inplace ${UPDATE_NOTEBOOKS}

.PHONY: quarto-preview
quarto-preview: archive/_quarto.yml
	quarto preview ./archive/

.PHONY: quarto-render
quarto-render: archive/_quarto.yml
	quarto render ./archive/

.PHONY: clean
clean:
	rm -fr ./archive/.quarto/
	rm -fr ./archive/_site/
	find . \
		-type f -name '*.py[co]' -delete \
		-o -type d -name .ipynb_checkpoints -delete
