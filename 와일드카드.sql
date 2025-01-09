select 
	row_number() over(order by `id`) as num,
    name_tb.*
from
	(select
		course_id as `id`,
		course_name as `name`
	from	
		course_tb
	union
	select
		major_id,
		major_name
	from
		major_tb) as name_tb;
		
select 
--	rank: 동일한 값에 대해 동일한 순위를 부여하고 뒤의 순위를 건너 뛰는 기능 (공동 1등이면 2등은 사라짐)
	rank() over(order by `id`) as num,
    name_tb.*
from
	(select
		course_id as `id`,
		course_name as `name`
	from	
		course_tb
	union
	select
		major_id,
		major_name
	from
		major_tb) as name_tb

select 
--	rank: 동일한 값에 대해 동일한 순위를 부여하고 뒤의 순위를 건너 뛰는 기능 (공동 1등이면 2등은 사라짐)
	rank() over(order by `id`) as num,
    name_tb.*
from
	(select
		course_id as `id`,
		course_name as `name`
	from	
		course_tb
	union
	select
		major_id,
		major_name
	from
		major_tb) as name_tb;
        
# where 와일드 카드(like)
select
	*
from
	instructor_tb
where
--	%: 어떤값이 들어와도 상관 x (ex %교%: 교가 포함되는 값) 
-- _: 글자수를 나타냄 (ex _교_: 앞뒤에 글자가 하나만 있는 값 김교수O, 제갈교수X)
	instructor_name like '_교_';
    

        
 
        