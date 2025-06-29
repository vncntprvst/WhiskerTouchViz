# AGENT instructions

These instructions apply to the entire repository:

- Use clear, descriptive commit messages that reference the part of the project being changed (e.g. `docs: update PRD`).
- Keep documentation in the `docs/` folder using Markdown format.
- Clear notebook outputs before committing with:
  ```bash
  find . -name "*.ipynb" -exec jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace {} \;
  ```
- Manually run `python web/wall_dist_app.py` to ensure the example Flask app starts without errors when making web related changes.
- Verify Python files compile by running:
  ```bash
  python -m py_compile $(git ls-files '*.py')
  ```
