import dash
import dash_core_components as dcc
import dash_html_components as html

import dash_daq as daq

external_stylesheets = ['https://codepen.io/chriddyp/pen/bWLwgP.css']

app = dash.Dash(__name__, external_stylesheets=external_stylesheets)

app.layout = html.Div(children=[
    html.H1(children="Internship assignment"),
    html.Div(children='''
Hi There employee, we will change this page with next update of the app using mender.
'''),

    daq.PowerButton(
        id='led-power-button',
        on=True,
        size=100,
        color='#FF5E5E'
    ),
    html.Div(id='power-button-output')
 ])


@app.callback(
    dash.dependencies.Output('power-button-output', 'children'),
    [dash.dependencies.Input('led-power-button', 'on')]
    )
def update_output(on):
    print(f"The State is {on}")
    if on == True:
        return 'ON'
    else:
        return 'OFF';

if __name__ == '__main__':
    app.run_server(debug=True, host='0.0.0.0')
