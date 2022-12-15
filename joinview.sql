
create or replace view review_view
as
select
	r_idx, r_subject, r_content, r_regdate, r_score, r_count, m_nickname, m_ip, c_subject, c_category
from
review r left outer join member m on r.m_idx = m.m_idx
		 left outer join cinema c on r.c_idx = c.c_idx
		 
		 
drop view review_view

select * from review_view
