# Default recipe.
_default: help

# Remove the virtual environment.
clean:
    rm -rf .venv
    rm -rf *.egg-info
    find . -name "*.pyc" -exec rm -f {} \;
    find . -type f -name "*.py[co]" -delete -or -type d -name "__pycache__" -delete

# Show help for each of the recipes.
help:
    @just --list

# Lint the code with ruff.
lint:
    .venv/bin/ruff check ./src ./tests

# Update the lock file from pyproject.toml.
lock:
    uv lock

# Compile the nuweb document
nuweb:
    nuweb -l -r -p reports reports/biggest_built_in.w
    pdflatex -output-directory=reports reports/biggest_built_in.tex
    nuweb -l -r -p reports reports/biggest_built_in.w
    pdflatex -output-directory=reports reports/biggest_built_in.tex

# Publish the documentation.
publish:
    .venv/bin/mkdocs gh-deploy --force --verbose

# Report Python version and pip packages.
report:
    .venv/bin/python --version
    uv pip list -v

# Run the tests with pytest.
test:
    .venv/bin/pytest ./tests --verbose --color=yes
    .venv/bin/pytest --cov=buck_rogers --cov-fail-under=40

# Create the virtual environment.
venv:
    uv venv .venv --clear
    uv sync --frozen

# Run the entangled file watcher
watch:
    .venv/bin/entangled watch
