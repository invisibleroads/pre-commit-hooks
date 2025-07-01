# Pre-Commit Hooks

- clear-notebook-outputs: clear outputs from jupyter notebooks

## Usage

Add a file named `.pre-commit-config.yaml` to your repository with the following contents:

```yaml
---
repos:
  - repo: https://github.com/pre-commit/pre-commit-hooks
    rev: v5.0.0
    hooks:
      - id: check-added-large-files
      - id: check-ast
      - id: check-case-conflict
      - id: check-json
      - id: check-merge-conflict
      - id: check-toml
      - id: check-yaml
      - id: debug-statements
      - id: detect-private-key
      - id: double-quote-string-fixer
      - id: end-of-file-fixer
      - id: mixed-line-ending
      - id: name-tests-test
      - id: requirements-txt-fixer
      - id: trailing-whitespace
  - repo: https://github.com/invisibleroads/pre-commit-hooks
    rev: 0.0.1
    hooks:
      - id: clear-notebook-outputs
  - repo: https://github.com/nbQA-dev/nbQA
    rev: 1.9.1
    hooks:
      - id: nbqa-ruff
```

Then install the hooks.

```
pip install pre-commit -U
pre-commit install
```
