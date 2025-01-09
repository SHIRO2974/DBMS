select 
	도서명,
	저자명,
    isbn,
    표지url
from
	books

-- group by: 데이터를 그룹화하여 (Ex count(), sum(), AVG()) 같은 특정 컬럼을 기준으로 데이터를 그룹화하고 집계결과 반환
group by
	도서명,
    저자명,
    isbn,
    표지url;