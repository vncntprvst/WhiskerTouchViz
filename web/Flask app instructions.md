1. install Flask and Plotly:
pip install flask plotly

2. you can now run the Flask app.
Open a terminal, navigate to the directory where your app.py file is located, and run the following command:
    
`python wall_dist_app.py`

This will start the Flask development server. Open your web browser and go to http://127.0.0.1:5000/. You should see your whiskers plot and an input field to adjust the wall distance.

When you're ready to deploy your web app for others to use, you can follow the official Flask deployment guide: https://flask.palletsprojects.com/en/2.1.x/deploying/ or use a platform like Heroku, which offers a simple and straightforward deployment process for Flask apps. You can follow the Heroku guide for deploying Python web apps: https://devcenter.heroku.com/articles/getting-started-with-python.

Note that the current implementation uses a form to update the plot, which requires a page reload. To make the plot update without a page reload, you can use JavaScript and AJAX to send requests and update the plot dynamically.
