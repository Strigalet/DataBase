import cx_Oracle

username = 'alyosha'
password = '123456789'
database = 'localhost/xe'

connection = cx_Oracle.connect(username,password,database)
cursor = connection.cursor()

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
result = cursor.fetchone()

print("FIRST QUERY")
print("country    high_mmr")
while result:
	print(result[0],'         ',result[1])
	result = cursor.fetchone()

print("-------------------------")
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
result = cursor.fetchone()

print("\nSECOND QUERY")
print("award                fraction")
while result:
    if len(result[0])==10:
        print(result[0], '           ', result[1])
        result = cursor.fetchone()
    else:
	    print(result[0],'         ',result[1])
	    result = cursor.fetchone()
print("-------------------------")

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
result = cursor.fetchone()

print("\nTHIRD QUERY")
print("year          average")
while result:
	print(result[0],'         ',result[1])
	result = cursor.fetchone()

cursor.close()
connection.close()
