# Pre-Commit Hooks

- clear-notebook-outputs: clear outputs from jupyter notebooks

## Usage

Add a file named `.pre-commit-config.yaml` to your repository with the following contents:

```yaml
---
repos:
  - repo: https://github.com/pre-commit/pre-commit-hooks
    rev: v4.4.0
    hooks:
      - id: check-added-large-files
      - id: check-docstring-first
      - id: check-json
      - id: check-merge-conflict
      - id: check-yaml
      - id: debug-statements
      - id: double-quote-string-fixer
      - id: end-of-file-fixer
      - id: name-tests-test
      - id: requirements-txt-fixer
      - id: trailing-whitespace
  - repo: https://github.com/nbQA-dev/nbQA
    rev: 1.7.0
    hooks:
      - id: nbqa
        name: nbqa-pylama
        description: check sources in jupyter notebooks
        entry: nbqa pylama
        additional_dependencies: [pylama]
        types: [jupyter]
  - repo: https://github.com/invisibleroads/pre-commit-hooks
    rev: 0.0.1
    hooks:
      - id: clear-notebook-outputs
```

Then install the hooks.

```
pip install pre-commit -U
pre-commit install
```
