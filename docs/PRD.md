# WhiskerTouchViz Product Requirements Document

## Overview
WhiskerTouchViz is a lightweight tool for visualizing how neurons in the principal trigeminal nucleus (PrV) respond to whisker touch at various distances.  The focus is on providing a **simple web UI** where sliders and other widgets let the user explore how distance and neuron parameters shape firing rates.  Both Jupyter notebooks and a small Flask app demonstrate the calculations and plotting code.  Users can view tuning curves for single neurons or combine multiple neurons (including intermediate inhibitory ones) to see aggregate responses.

## Goals
- Offer an easy to use interface to inspect tuning curves of PrV neurons.
- Allow adjustment of stimulus parameters (e.g., distance to a wall) and neuron properties through sliders or form inputs.
- Support viewing responses from single neurons and composite circuits including inhibitory interneurons.
- Keep the interface minimal so that experiments load quickly and can be run locally without complex setup.

## Non-Goals
- Providing a full neuroscience simulation platform or data storage system.
- Hosting the web app on a public server. Deployment instructions are provided but hosting is left to the user.

## Features
1. **Interactive plotting**: Real-time update of tuning curves in the browser using Plotly.
2. **Parameter controls**: Widgets or form inputs to modify stimulus distance and neuron parameters.
3. **Notebook exploration**: Jupyter notebooks demonstrate the underlying calculations and plotting code.
4. **Flask demo app**: Example web application (`web/wall_dist_app.py`) that serves a simple interface for adjusting wall distance and viewing responses.

## User Stories
- As a researcher, I want to visualize how a single PrV neuron responds to whisker touch at different distances.
- As a student, I want to experiment with combining multiple neurons and inhibitory connections to see how overall responses change.
- As a developer, I want a basic example of how to build a neuroscience visualization with Flask and Plotly.

## Future Work
- Add automated tests and continuous integration.
- Extend the web interface with more parameters and interactive controls.
- Provide example datasets for typical neuron responses.
