# Write your MySQL query statement below
# since in the question we have to deal with consicutive rows so 1st idea should be join
# now if we want "join" we should check for the condition "ON" 
# "ON" uses condition so we give the condition as per requirement
# and mathematical function that we want to show in our answer should be written after "Select"
select a1.machine_id
, ROUND(AVG(a2.timestamp - a1.timestamp),3) as processing_time
from Activity a1
join Activity a2
on (a1.process_id=a2.process_id
and a1.machine_id=a2.machine_id
and a1.timestamp<a2.timestamp)
group by a1.machine_id;

#------------------2nd solution-----------------#
# 1) everything is same but if we dont want join we can use both table in "from" statement
# 2) "ON" will be replaced by "where" rest is same

#select a1.machine_id
#, ROUND(AVG(a2.timestamp - a1.timestamp),3) as processing_time
#from Activity a1,Activity a2
#where (a1.process_id=a2.process_id
#and a1.machine_id=a2.machine_id
#and a1.timestamp<a2.timestamp)
#group by a1.machine_id;'