# select 

select
	*
from
	student_tb;
    
# where 조건
select
	*
from
	student_tb
where
	student_year = 3 or student_year = 4;
    
-- 특정 값이 목록에 포함되는지 확인하는 연산자    
--  student_ in(3, 4);	
    
--  student_year > 2 and student_year < 5;
--  student_year >= 3 and student_year <= 4;
    
--	between: 두 값 사이의 범위 내에 있는 값을 검색하는 연산자    
--  student_year between 3 and 4;	

-- union: 두 개 이상의 select 쿼리 결과를 결합할 때 사용 (중복 값은 제거)
-- unionall: 중복 값을 제거 하지 않고 결과를 결합할 때 사용    
-- +) 컬럼의 갯수가 일치할 때 사용할 것
    
select 
	10 as num,
    20 as num2,
    '이름' as name
union  
select 
	30 as num,
    40 as num2,
    '이름2' as name;   
    
select 
	1 as id,
    '월' as day
union all
select 
	2 as id,
    '화' as day
union all    
select 
	3 as id,
    '수' as day;
    
select
	row_number() over(order by student_name)as num,
	student_name as name
from
	student_tb
union
select
	row_number() over(order by instructor_name)+4 as num,
	instructor_name
from
	instructor_tb; 
    
-- row_number: 쿼리 결과를 순차적으로 번호를 매길 때 사용하는 함수
-- row_number() over(order by 정렬하고자 하는 컬럼)
select
	row_number() over(order by student_name)as num,
	student_name
from
	student_tb;

select 
	*
from
	student_tb
    
-- order by: 오름차순 정렬/ desc: 내림차순 정렬
-- order by 정렬하고자하는 컬럼 desc, 정렬하고자 하는 컬럼;
order by
	student_year desc,
	student_name;
    
