# Pre-Commit Hooks

- clear-notebook-outputs: clear outputs from jupyter notebooks

## Usage

Add a file named `.pre-commit-config.yaml` to your repository with the following contents:

```yaml
---
repos:
  - repo: https://github.com/pre-commit/pre-commit-hooks
    rev: v6.0.0
    hooks:
      - id: check-added-large-files
      - id: check-ast
      - id: check-builtin-literals
      - id: check-case-conflict
      - id: check-executables-have-shebangs
      - id: check-illegal-windows-names
      - id: check-json
      - id: check-merge-conflict
      - id: check-shebang-scripts-are-executable
      - id: check-symlinks
      - id: check-toml
      - id: check-yaml
      - id: debug-statements
      - id: destroyed-symlinks
      - id: detect-private-key
      - id: double-quote-string-fixer
      - id: end-of-file-fixer
      - id: fix-byte-order-marker
      - id: mixed-line-ending
      - id: name-tests-test
      - id: pretty-format-json
        exclude_types: [jupyter]
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
