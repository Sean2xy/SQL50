# Write your MySQL query statement below
# DIAB1 match
select * from Patients where conditions like '% DIAB1%' or conditions like 'DIAB1%';