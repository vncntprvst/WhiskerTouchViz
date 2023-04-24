1. install Flask and Plotly:
pip install flask plotly

2. Create a new directory for the Flask app. 
Within that directory, create a new Python file called `wall_dist_app.py`. 
Paste the following code into `wall_dist_app.py`:
```python
from flask import Flask, render_template, request
import plotly.express as px
import plotly.graph_objects as go
import numpy as np

app = Flask(__name__)

def sigmoid(x, x0, k):
    return 1 / (1 + np.exp(-k * (x - x0)))

def plot_whiskers(wall_distance):
    x = np.linspace(20, 0, 100)

    whisker_colors = ['blue', 'green', 'red', 'purple', 'orange']
    whisker_labels = ['Whisker 5', 'Whisker 4', 'Whisker 3', 'Whisker 2', 'Whisker 1']

    whisker_responses = []

    fig = go.Figure()

    for i in range(4, -1, -1):
        x0 = 5 + 10 * (i / 4)
        k = 0.6
        response = sigmoid(x, x0, k)
        whisker_responses.append(response)
        fig.add_trace(go.Scatter(x=x, y=response, mode='lines', name=whisker_labels[i], line=dict(color=whisker_colors[i])))

    fig.add_shape(type='line', x0=wall_distance, x1=wall_distance, y0=0, y1=1, yref='paper', xref='x', line=dict(color='black', dash='dash'))
    fig.update_layout(title='Whisker Touch Response', xaxis_title='Wall distance (mm)', yaxis_title='Firing rate')
    return fig

@app.route('/', methods=['GET', 'POST'])
def index():
    wall_distance = 10

    if request.method == 'POST':
        wall_distance = float(request.form['wall_distance'])

    whiskers_plot = plot_whiskers(wall_distance)
    whiskers_html = whiskers_plot.to_html(full_html=False)

    return render_template('index.html', whiskers_plot=whiskers_html, wall_distance=wall_distance)

if __name__ == '__main__':
    app.run(debug=True)
```
3. Create a new folder named templates within the Flask app directory. 
Inside the templates folder, create a new HTML file called index.html. 
Paste the following code into index.html:
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Whisker Touch Response</title>
</head>
<body>
    <h1>Whisker Touch Response</h1>
    <form method="post">
        <label for="wall_distance">Wall Distance:</label>
        <input type="number" id="wall_distance" name="wall_distance" value="{{ wall_distance }}" step="0.1">
        <input type="submit" value="Update">
    </form>
    {{ whiskers_plot|safe }}
</body>
</html>
```
4. With everything set up, you can now run the Flask app.
Open a terminal, navigate to the directory where your app.py file is located, and run the following command:
    
`python wall_dist_app.py`

This will start the Flask development server. Open your web browser and go to http://127.0.0.1:5000/. You should see your whiskers plot and an input field to adjust the wall distance.

When you're ready to deploy your web app for others to use, you can follow the official Flask deployment guide: https://flask.palletsprojects.com/en/2.1.x/deploying/ or use a platform like Heroku, which offers a simple and straightforward deployment process for Flask apps. You can follow the Heroku guide for deploying Python web apps: https://devcenter.heroku.com/articles/getting-started-with-python.

Note that the current implementation uses a form to update the plot, which requires a page reload. To make the plot update without a page reload, you can use JavaScript and AJAX to send requests and update the plot dynamically.