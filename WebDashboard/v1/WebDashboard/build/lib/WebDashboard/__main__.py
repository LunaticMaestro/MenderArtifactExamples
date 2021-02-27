import dash
import dash_core_components as dcc
import dash_html_components as html


external_stylesheets = ['https://codepen.io/chriddyp/pen/bWLwgP.css']

app = dash.Dash(__name__, external_stylesheets=external_stylesheets)

app.layout = html.Div(children=[
    html.H1(children="Internship assignment"),
    html.Div(children='''
Hi there employer, we will change this page with next update of the app using mender.
'''),
 ])

def main():
    app.run_server(debug=True, host='0.0.0.0')

if __name__ == '__main__':
    main()