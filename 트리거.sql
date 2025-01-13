insert into data_b_tb
value
	(default, '111'),
    (default, '222'),
    (default, '333');
    
insert into data_a_tb
value
	(default, 'aaa', 1),
    (default, 'bbb', 1),
    (default, 'ccc', 2),
    (default, 'ddd', 3),
    (default, 'eee', 3);
    
    
select
	*
from
	data_b_tb b
    left outer join data_a_tb a on(a.data_b_id = b.data_b_id);
    
delete	
from
	data_b_tb
where
	data_b_value = '555';
    
insert into data_b_tb
value
	(default, '555');
    
select 
	*
from	
	data_d_tb;
    


