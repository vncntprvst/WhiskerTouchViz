### Whisker Touch Response Curves

For installation, see [setup instructions](setup/SETUP.md).

**Use**  
Navigate to `WhiskerTouchViz` directory, then run:

```bash
# Run Jupyter Lab directly
uv run jupyter lab

# Run Python scripts
uv run python your_script.py

# Run notebooks
uv run jupyter notebook notebooks/WhiskerResponseCurves.ipynb
```


**Git**  
After updating notebooks, run `find . -name "*.ipynb" -exec jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace {} \;` before staging changes to clear outputs.
