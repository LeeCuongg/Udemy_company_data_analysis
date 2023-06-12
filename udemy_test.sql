select * from udemy_test_csv utc 

-- cau 1
select subject , sum(num_subscribers)as subscribers
from udemy_test_csv utc 
group by subject 
order by subject desc limit 1

-- cau 2
select course_title, num_subscribers *price as amount
from udemy_test_csv utc 
where is_paid =1
order by amount desc limit 1

-- cau 3
select course_title , price,num_reviews 
from udemy_test_csv utc 
where num_reviews = (select max(num_reviews) from udemy_test_csv )

-- cau 4
select course_title, num_subscribers, num_reviews 
from udemy_test_csv utc 
order by num_reviews  limit 10

-- cau 5
with A as  (select course_title, num_subscribers, num_subscribers *price as amount
from udemy_test_csv utc 
order by num_subscribers desc limit 10)
select course_title , amount
from A
order by amount desc limit 5 



