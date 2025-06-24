# Copilot Instructions

This repository implements a simple web interface for exploring responses of PrV neurons during whisker touch experiments. It includes notebooks, a small Flask demo app, and plotting utilities.

When updating code or notebooks:

- Follow standard Python best practices and keep the code easy to read.
- Ensure any Jupyter notebook output is cleared before committing. Run the following before staging notebooks:
  ```bash
  find . -name "*.ipynb" -exec jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace {} \;
  ```
- No automated tests exist yet, so manually verify that the example Flask app runs before pushing major changes.
- Documentation lives in the `docs/` directory. Keep it concise and Markdown formatted.
