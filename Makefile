.PHONY: clean
clean:
	rm -fr ./archive/.quarto/
	rm -fr ./archive/_site/
	find . \
		-type f -name '*.py[co]' -delete \
		-o -type d -name .ipynb_checkpoints -delete

.PHONY: setup
setup: pyproject.toml
	poetry check
	poetry install

.PHONY: jupyter-lab
jupyter-lab:
	poetry run jupyter lab .

.PHONY: quarto-preview
quarto-preview: archive/_quarto.yml
	quarto preview ./archive/

.PHONY: quarto-render
quarto-render: archive/_quarto.yml
	quarto render ./archive/
