### Whisker Touch Response Curves

**Install**  
```bash
git clone https://github.com/vncntprvst/WhiskerTouchViz.git
cd WhiskerTouchViz
conda env create --name neur_resp_viz --file environment.yml
```

**Use**  
Navigate to `WhiskerTouchViz` directory then 
```bash
conda activate neur_resp_viz
jupyter lab
```

From the `notebooks` folder, open `WhiskerResponseCurves.ipynb`.  

**Git**  
After updating notebooks, run `find . -name "*.ipynb" -exec jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace {} \;` before staging changes to clear outputs.
