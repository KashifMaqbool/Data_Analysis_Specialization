"""
===========================================================================
PROJECT SCENARIO
===========================================================================

Project Name:
Automobile Sales Statistics Dashboard using Plotly and Dash

Objective:
The objective of this project is to analyze the historical trends in
automobile sales during recession periods and understand how the sales
of XYZAutomotives were affected during economic downturns.

This project demonstrates Dashboarding skills using Plotly and Dash.

As a Data Scientist, the task is to prepare an interactive dashboard
report based on Automobile Sales data analysis.

The dashboard consists of two major reports:

1. Yearly Automobile Sales Statistics
2. Recession Period Statistics

Dataset Year Range:
1980 to 2013

===========================================================================
REPORT 1: YEARLY AUTOMOBILE SALES STATISTICS
===========================================================================

This report contains the following visualizations:

1. Yearly Automobile Sales Using Line Chart
2. Total Monthly Automobile Sales Using Line Chart
3. Average Vehicles Sold by Vehicle Type
4. Total Advertisement Expenditure for Each Vehicle
===========================================================================
REPORT 2: RECESSION PERIOD STATISTICS
===========================================================================

This report contains the following visualizations:

1. Average Automobile Sales Fluctuation Over Recession Period
2. Average Number of Vehicles Sold by Vehicle Type
3. Total Expenditure Share by Vehicle Type During Recessions
4. Effect of Unemployment Rate on Vehicle Type and Sales
"""
"""
===========================================================================
PROJECT REQUIREMENTS
===========================================================================

Dashboard Requirements:

1. Create TWO dropdown menus.
---------------------------------------------------------------------------
Dropdown 1: Report Type
---------------------------------------------------------------------------

Purpose:
Allows the user to select which report to display.

Options:
- Yearly Statistics
- Recession Period Statistics
---------------------------------------------------------------------------
Dropdown 2: Year Selection
---------------------------------------------------------------------------
Purpose:
Allows the user to select a particular year.

Behavior:
- Enabled when 'Yearly Statistics' is selected.
- Disabled when 'Recession Period Statistics' is selected.

Each dropdown should be placed inside a separate division.

===========================================================================
APPLICATION LAYOUT
===========================================================================

The dashboard should contain:

1. Dashboard Title
2. Report Type Dropdown
3. Year Selection Dropdown
4. Output Container for displaying charts
"""


import dash
from dash import dcc, html, Input, Output
import pandas as pd
import plotly.express as px

# Load data
# Ensure the CSV file is in the same directory as this script
data = pd.read_csv("Assets/2_Automobile_Sales.csv")

# Initialize the app
app = dash.Dash(__name__)

# Define the layout
year_list = [i for i in range(1980, 2024, 1)]

app.layout = html.Div([
    # Task 2.1: App title
    html.H1("Automobile Sales Statistics Dashboard", 
            style={'textAlign': 'center', 'color': '#503D36', 'font-size': '24px'}),
    
    # Task 2.2: Dropdowns for report type and year selection
    # Dropdown for selecting report type
    html.Div([
        html.Label("Select Report Type:"),
        dcc.Dropdown(
            id='dropdown-statistics',
            options=[
                {'label': 'Yearly Statistics', 'value': 'Yearly Statistics'},
                {'label': 'Recession Period Statistics', 'value': 'Recession Period Statistics'}
            ],
            placeholder='Select a report type',
            value='Select Statistics',
            style={'width': '80%', 'padding': '3px', 'font-size': '20px', 'text-align-last': 'center'}
        )
    ]),
    
    # Dropdown for selecting year
    html.Div([
        html.Label("Select Year:"),
        dcc.Dropdown(
            id='select-year',
            options=[{'label': str(i), 'value': i} for i in year_list],
            placeholder='Select-year',
            value='Select-year'
        )
    ]),
    
    # Task 2.3: Container to display output graphs
    html.Div(id='output-container', className='chart-grid', style={'display': 'flex', 'flex-wrap': 'wrap'})
])

# TASK 2.4: Callback to enable/disable the year dropdown based on report type
# Callback to toggle year dropdown
@app.callback(
    Output(component_id='select-year', component_property='disabled'),
    Input(component_id='dropdown-statistics', component_property='value')
)
def update_input_container(selected_statistics):
    # If "Yearly Statistics" is selected, enable the year dropdown; otherwise disable it
    return False if selected_statistics == 'Yearly Statistics' else True

# 5. Callback for plotting
@app.callback(
    Output(component_id='output-container', component_property='children'),
    [Input(component_id='dropdown-statistics', component_property='value'),
     Input(component_id='select-year', component_property='value')]
)

# Case 1: Recession Period Statistics
# TASK 2.5: Create and display graphs for Recession Report Statistics
def update_output_container(selected_statistics, input_year):
    if selected_statistics == 'Recession Period Statistics':
        recession_data = data[data['Recession'] == 1]
        
        # Plot 1: Automobile sales fluctuate over Recession Period (year wise) (line chart)
        yearly_rec = recession_data.groupby('Year')['Automobile_Sales'].mean().reset_index()
        R_chart1 = dcc.Graph(figure=px.line(yearly_rec, x='Year', y='Automobile_Sales', title="Average Automobile Sales Fluctuation Over Recession Period"))
        
        # Plot 2: Average number of vehicles sold by vehicle type (Bar chart)
        avg_sales = recession_data.groupby('Vehicle_Type')['Automobile_Sales'].mean().reset_index()
        R_chart2 = dcc.Graph(figure=px.bar(avg_sales, x='Vehicle_Type', y='Automobile_Sales', title="Average Vehicles Sold by Vehicle Type"))
        
        # Plot 3: Total expenditure share by vehicle type during recessions (Pie chart)
        exp_rec = recession_data.groupby('Vehicle_Type')['Advertising_Expenditure'].sum().reset_index()
        R_chart3 = dcc.Graph(figure=px.pie(exp_rec, values='Advertising_Expenditure', names='Vehicle_Type', title="Total Expenditure Share by Vehicle Type During Recessions"))
        
        # Plot 4: Effect of unemployment rate on vehicle type and sales (Bar chart)
        unemp_data = recession_data.groupby(['unemployment_rate', 'Vehicle_Type'])['Automobile_Sales'].mean().reset_index()
        R_chart4 = dcc.Graph(figure=px.bar(unemp_data, x='unemployment_rate', y='Automobile_Sales', color='Vehicle_Type', title='Effect of Unemployment Rate on Vehicle Type and Sales'))
        
        return [
            html.Div([R_chart1, R_chart2], style={'display': 'flex', 'width': '100%'}),
            html.Div([R_chart3, R_chart4], style={'display': 'flex', 'width': '100%'})
        ]


    # Case 2: Yearly Statistics for a selected year
    # TASK 2.6: Create and display graphs for Yearly Report Statistics
    elif selected_statistics == 'Yearly Statistics' and input_year != 'Select-year':
        yearly_data = data[data['Year'] == input_year]
        
        # Plot 1: Year vs Average Automobile Sales during the selected year (line chart)
        yas = data.groupby('Year')['Automobile_Sales'].mean().reset_index()
        Y_chart1 = dcc.Graph(figure=px.line(yas, x='Year', y='Automobile_Sales', title="Average Yearly Automobile Sales"))
        
        # Plot 2: Month vs Total Automobile Sales during the selected year (line chart)
        mas = yearly_data.groupby('Month')['Automobile_Sales'].sum().reset_index()
        Y_chart2 = dcc.Graph(figure=px.line(mas, x='Month', y='Automobile_Sales', title="Total Monthly Automobile Sales"))
        
        # Plot 3: Average vehicles sold by vehicle type during the selected year (bar chart)
        avr_vdata = yearly_data.groupby('Vehicle_Type')['Automobile_Sales'].mean().reset_index()
        Y_chart3 = dcc.Graph(figure=px.bar(avr_vdata, x='Vehicle_Type', y='Automobile_Sales', title="Average Vehicles Sold by Vehicle Type"))
        
        # Plot 4: Total advertisement expenditure for each vehicle type during the selected year (pie chart)
        exp_data = yearly_data.groupby('Vehicle_Type')['Advertising_Expenditure'].sum().reset_index()
        Y_chart4 = dcc.Graph(figure=px.pie(exp_data, values='Advertising_Expenditure', names='Vehicle_Type', title="Total Advertisement Expenditure for Each Vehicle"))
        
        return [
            html.Div([Y_chart1, Y_chart2], style={'display': 'flex', 'width': '100%'}),
            html.Div([Y_chart3, Y_chart4], style={'display': 'flex', 'width': '100%'})
        ]
    
    return []

if __name__ == '__main__':
    app.run()