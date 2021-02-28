import dash
import dash_core_components as dcc
import dash_html_components as html
from WebDashboard.ledState import updateLedInventory
import dash_daq as daq

external_stylesheets = ['https://codepen.io/chriddyp/pen/bWLwgP.css']

app = dash.Dash(__name__, external_stylesheets=external_stylesheets)

app.layout = html.Div(children=[
    html.H1(children="Internship assignment"),
    html.Div(children='''
Click the button, to change state of your LED. View the same over mender site in device's inventory variables.
'''),

    daq.PowerButton(
        id='led-power-button',
        on=True,
        size=100,
        color='#FF5E5E'
    ),
    html.Div(id='power-button-output', children='LED: ON')
 ])


@app.callback(
    dash.dependencies.Output('power-button-output', 'children'),
    [dash.dependencies.Input('led-power-button', 'on')]
    )
def update_output(on):
    updateLedInventory(on)
    if on == True:
        return 'LED: ON'
    else:
        return 'LED: OFF';

def main():
    app.run_server(debug=True, host='0.0.0.0')

if __name__ == '__main__':
    main()
