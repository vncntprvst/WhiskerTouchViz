### Whisker Touch Response Curves

**Install**
```bash
git clone repo
cd repo
conda env create --name neur_resp_viz --file environment.yml
```

**Use**
```bash
conda activate neur_resp_viz
cd repo
jupyter lab
```

Go to the `notebooks` folder and open `WhiskerResponseCurves.ipynb`.

**Git**
After updating notebooks, run `find . -name "*.ipynb" -exec jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace {} \;` before staging changes.