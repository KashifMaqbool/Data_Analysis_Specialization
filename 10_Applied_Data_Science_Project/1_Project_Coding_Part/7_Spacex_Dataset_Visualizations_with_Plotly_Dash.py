# -----------------------------------------------------------
# SpaceX Launch Records Dashboard
#
# This dashboard allows users to:
# 1. Select a launch site
# 2. View launch success statistics using a pie chart
# 3. Filter launches by payload mass
# 4. Analyze launch outcomes using a scatter plot
# -----------------------------------------------------------

# Import required libraries
import os
import pandas as pd
import dash
from dash import dcc
from dash import html
from dash.dependencies import Input, Output
import plotly.express as px

# -----------------------------------------------------------
# Load SpaceX dataset
# -----------------------------------------------------------

base = os.path.dirname(__file__)
csv_path = os.path.join(base, "Assets", "9_spacex_launch_dash.csv")
spacex_df = pd.read_csv(csv_path)

# Find minimum and maximum payload values
max_payload = spacex_df['Payload Mass (kg)'].max()
min_payload = spacex_df['Payload Mass (kg)'].min()

# -----------------------------------------------------------
# Create Dash Application
# -----------------------------------------------------------

app = dash.Dash(__name__)

# -----------------------------------------------------------
# Dropdown options
# Add ALL option plus all launch sites
# -----------------------------------------------------------

launch_sites = spacex_df['Launch Site'].unique()

dropdown_options = [
    {'label': 'All Sites', 'value': 'ALL'}
]

for site in launch_sites:
    dropdown_options.append(
        {
            'label': site,
            'value': site
        }
    )

# -----------------------------------------------------------
# Dashboard Layout
# -----------------------------------------------------------

app.layout = html.Div(children=[

    # Dashboard Title
    html.H1(
        'SpaceX Launch Records Dashboard',
        style={
            'textAlign': 'center',
            'color': '#503D36',
            'font-size': 40
        }
    ),

    # -------------------------------------------------------
    # TASK 1
    # Launch Site Dropdown
    # -------------------------------------------------------

    dcc.Dropdown(
        id='site-dropdown',
        options=dropdown_options,
        value='ALL',
        placeholder='Select a Launch Site here',
        searchable=True
    ),

    html.Br(),
    # Pie Chart
    html.Div(
        dcc.Graph(id='success-pie-chart')
    ),

    html.Br(),
    html.P("Payload range (Kg):"),

    # -------------------------------------------------------
    # TASK 3
    # Payload Range Slider
    # -------------------------------------------------------

    dcc.RangeSlider(
        id='payload-slider',

        min=0,
        max=10000,
        step=1000,

        marks={
            0: '0',
            2500: '2500',
            5000: '5000',
            7500: '7500',
            10000: '10000'
        },
        value=[min_payload, max_payload]
    ),

    html.Br(),

    # Scatter Plot
    html.Div(
        dcc.Graph(id='success-payload-scatter-chart')
    )
])

# -----------------------------------------------------------
# TASK 2
# Callback for Pie Chart
# -----------------------------------------------------------

@app.callback(
    Output(
        component_id='success-pie-chart',
        component_property='figure'
    ),

    Input(
        component_id='site-dropdown',
        component_property='value'
    )
)

def update_pie_chart(selected_site):

    # -------------------------------------------------------
    # Case 1: ALL sites selected
    # Show total successful launches by launch site
    # -------------------------------------------------------

    if selected_site == 'ALL':

        success_counts = (
            spacex_df.groupby('Launch Site')['class']
            .sum()
            .reset_index()
        )

        fig = px.pie(
            success_counts,
            values='class',
            names='Launch Site',
            title='Total Successful Launches by Site'
        )

        return fig

    # -------------------------------------------------------
    # Case 2: Specific site selected
    # Show success vs failure counts
    # -------------------------------------------------------

    else:

        filtered_df = spacex_df[
            spacex_df['Launch Site'] == selected_site
        ]

        outcome_counts = (
            filtered_df['class']
            .value_counts()
            .reset_index()
        )

        outcome_counts.columns = ['Outcome', 'Count']

        outcome_counts['Outcome'] = outcome_counts[
            'Outcome'].map(
            {
                1: 'Success',
                0: 'Failure'
            }
        )

        fig = px.pie(
            outcome_counts,
            values='Count',
            names='Outcome',
            title=f'Success vs Failure for {selected_site}'
        )

        return fig

# -----------------------------------------------------------
# TASK 4
# Callback for Scatter Plot
# -----------------------------------------------------------

@app.callback(
    Output(
        component_id='success-payload-scatter-chart',
        component_property='figure'
    ),

    [
        Input(
            component_id='site-dropdown',
            component_property='value'
        ),

        Input(
            component_id='payload-slider',
            component_property='value'
        )
    ]
)

def update_scatter_plot(selected_site, payload_range):

    # Extract selected payload range
    low, high = payload_range

    # Filter dataframe according to payload range
    payload_filtered_df = spacex_df[
        (spacex_df['Payload Mass (kg)'] >= low)
        &
        (spacex_df['Payload Mass (kg)'] <= high)
    ]

    # -------------------------------------------------------
    # Case 1: ALL sites selected
    # -------------------------------------------------------

    if selected_site == 'ALL':

        fig = px.scatter(
            payload_filtered_df,

            x='Payload Mass (kg)',
            y='class',

            color='Booster Version Category',

            title='Payload vs Launch Outcome for All Sites'
        )

        return fig

    # -------------------------------------------------------
    # Case 2: Specific site selected
    # -------------------------------------------------------

    else:

        site_df = payload_filtered_df[
            payload_filtered_df['Launch Site']
            == selected_site
        ]

        fig = px.scatter(
            site_df,

            x='Payload Mass (kg)',
            y='class',

            color='Booster Version Category',

            title=f'Payload vs Launch Outcome for {selected_site}'
        )

        return fig

# -----------------------------------------------------------
# Run Application
# -----------------------------------------------------------

if __name__ == '__main__':
    app.run(debug=True)


# -----------------------------------------------------------
# Findings
# 1. Largest successful launches: CCAFS LC-40
# 2. Highest launch success rate: Usually KSC LC-39A
# 3. Highest success payload range: Approximately 4000–7000 kg
# 4. Lowest success payload range: Very low payload ranges (<2000 kg)
# 5. Highest success booster version: Booster Version B5
# -----------------------------------------------------------