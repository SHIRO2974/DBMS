# transaction
-- @@: 전역 변수
select @@autocommit;

-- autocommit: 모든 insert을 실행시키면 자동으로 저장하는 기능 
-- set autocommit = 0으로 바꿔줘야 transaction을 사용할 수 있다.
set autocommit = 0;

insert into data_b_tb
value
	(default, '777');
    
commit;
    
select 
	*
from
	data_b_tb;
    
-- transaction: 여러 작업을 하나의 단위로 묶어 일관성 있는 처리를 보장하는 중요한 개념이며
-- 작업이 모두 성공해야만 반영되고, 하나라도 실패하면 전체 작업을 롤백(취소)할 수 있게 해준다    
start transaction;

insert into data_b_tb
value
	(default, '4040');
    
update
	data_b_tb
set
	data_b_value = '999'
where
	data_b_value = '777';

-- rollback: 모든 transaction작업을 rollback 시킨다
rollback;

-- savepoint: start transaction을 실행한 후 savepoint를 지정하여 원하는 작업까지 저장할 수 있다
savepoint aa;

-- rollback to: 세이브포인트로 지정한 지점까지 rollback
rollback to aa;

-- commit: 모든 transaction작업을 저장한다
commit;
