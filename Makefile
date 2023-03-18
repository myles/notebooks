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

.PHONY: jupyter-nbconvert
jupyter-nbconvert: */*/*/*/*/index.ipynb
	poetry run jupyter nbconvert --execute --to notebook --inplace */*/*/*/*/index.ipynb

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
