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