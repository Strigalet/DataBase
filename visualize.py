import chart_studio
import plotly.graph_objects as go
import chart_studio.plotly as py
import re
import chart_studio.dashboard_objs as dashboard
from plotly.subplots import make_subplots
import cx_Oracle

username = 'alyosha'
password = '123456789'
db = 'localhost/xe'


def fileId_from_url(url):
    """Return fileId from a url."""
    raw_fileId = re.findall("~[0-z]+/[0-9]+", url)[0][1:]
    return raw_fileId.replace('/', ':')


connection = cx_Oracle.connect(username, password, db)
cursor = connection.cursor()

chart_studio.tools.set_credentials_file(username='Strigalet', api_key='bNmtZCGyXVfk6VmiSYTc')

# FIRST
query = '''
SELECT
    Participant.country_name country,
    COUNT(rank) rank
FROM
    Participant
    JOIN 
    Award ON Participant.participant_id = Award.participant_id
             AND 
             Award.rank <= 25
                
GROUP BY
    Participant.country_name
ORDER BY
    Participant.country_name
'''

cursor.execute(query)
x = list()
y = list()

for i in cursor.fetchall():
    x.append(i[0])
    y.append(i[1])

fig = go.Figure(data=[go.Bar(x=x, y=y)])
fig.update_layout(xaxis=dict(title='Country'),
                  yaxis=dict(title='Amount of top 25 ranks'))

first = py.plot(fig, filename='bar_1')

# SECOND
query = '''
SELECT
    award_name,
    ROUND(COUNT(participant_id)*100/(SELECT COUNT(participant_id) FROM Award), 1) fraction
FROM 
    Award
GROUP BY award_name
ORDER BY award_name
'''

cursor.execute(query)
x = list()
y = list()

for i in cursor.fetchall():
    x.append(i[0])
    y.append(i[1])

fig = go.Figure(data=[go.Pie(labels=x, values=y)])

second = py.plot(fig, filename='pie_1')

# THIRD
query = '''
SELECT 
    year,
    ROUND(SUM(total)/COUNT(total),1) average
FROM Award

GROUP BY year
ORDER BY year
'''

cursor.execute(query)
x = list()
y = list()

for i in cursor.fetchall():
    x.append(i[0])
    y.append(i[1])

fig = go.Figure(data=[go.Scatter(x=x, y=y, mode='lines+markers')])

third = py.plot(fig, filename='scatter_1')

# DASHBOARD

dash_board = dashboard.Dashboard()

country_geniuses_bar = fileId_from_url(first)
medals_pie = fileId_from_url(second)
year_average_total_scatter = fileId_from_url(third)

box_1 = {
    'type': 'box',
    'boxType': 'plot',
    'fileId': country_geniuses_bar,
    'title': 'Amount of top 25 ranks by country'
}

box_2 = {
    'type': 'box',
    'boxType': 'plot',
    'fileId': medals_pie,
    'title': 'Percentage of given awards'
}

box_3 = {
    'type': 'box',
    'boxType': 'plot',
    'fileId': year_average_total_scatter,
    'title': 'Average total score by year'
}

dash_board.insert(box_1)
dash_board.insert(box_2, 'below', 1)
dash_board.insert(box_3, 'left', 2)

py.dashboard_ops.upload(dash_board, "Kasich Bogdan KM-83")