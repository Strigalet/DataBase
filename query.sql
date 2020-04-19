-- Query 1

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
    Participant.country_name;

-- Query 2

SELECT
    award_name,
    ROUND(COUNT(participant_id)*100/(SELECT COUNT(participant_id) FROM Award), 1) fraction
FROM 
    Award
GROUP BY award_name
ORDER BY award_name;


-- Query 3

SELECT 
    year,
    ROUND(SUM(total)/COUNT(total),1) average
FROM Award

GROUP BY year
ORDER BY year