# Copilot Instructions

This repository implements a simple web interface for exploring how neurons in the principal trigeminal nucleus (PrV) respond to tactile input at different distances.  Users can tweak wall distance and neuron parameters via sliders and other UI widgets to see updated tuning curves.  The repo includes notebooks, a lightweight Flask demo app, and plotting utilities.

When updating code or notebooks:

- Follow standard Python best practices and keep the code easy to read.
- Ensure any Jupyter notebook output is cleared before committing. Run the following before staging notebooks:
  ```bash
  find . -name "*.ipynb" -exec jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace {} \;
  ```
- No automated tests exist yet, so manually verify that the example Flask app runs before pushing major changes.
- Documentation lives in the `docs/` directory. Keep it concise and Markdown formatted.
- Commit messages should be descriptive and reference the part of the project being updated (e.g. `web: adjust slider`, `docs: clarify PRD`).
