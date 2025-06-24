### Whisker Touch Response Curves

For installation, see [setup instructions](setup/SETUP.md).

**Use**  
Navigate to `WhiskerTouchViz` directory to activate the environment:
```bash
# Windows
.venv\Scripts\activate

# macOS/Linux
source .venv/bin/activate
```
Then run Jupyter Lab:
```
jupyter lab
```

From the `notebooks` folder, open `WhiskerResponseCurves.ipynb`.  

**Git**  
After updating notebooks, run `find . -name "*.ipynb" -exec jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace {} \;` before staging changes to clear outputs.
