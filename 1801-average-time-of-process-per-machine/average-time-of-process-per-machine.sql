SELECT
    s.machine_id,
    round(avg(e.timestamp - s.timestamp),3) AS processing_time 
FROM Activity s
JOIN Activity e
ON s.machine_id = e.machine_id
AND s.process_id = e.process_id
WHERE s.activity_type = 'start'
  AND e.activity_type = 'end'
  group by s.machine_id;