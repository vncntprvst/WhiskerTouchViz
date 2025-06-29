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

### Web app

The `web/` folder includes a small Flask example.
Install the required packages and start the server:

```bash
uv pip install flask plotly
python web/wall_dist_app.py
```

Open your browser to <http://127.0.0.1:5000/> and use the form to adjust
the wall distance.


**Git**  
After updating notebooks, run `find . -name "*.ipynb" -exec jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace {} \;` before staging changes to clear outputs.
