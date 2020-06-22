--网络剧备案信息
select* from public.online_drama_info where drama_type='网络动画' and result is not null
select count(*) from public.online_drama_info
select *  from public.record_summary
select * from public.online_drama_info where name like'%圆环%'
select * from public.online_drama_info where year in ('2020','2019','2018','2017','2016')


--搜索页网络剧类型c
select distinct (era) from public.online_drama_info where drama_type='网络剧' 
select distinct (era) from public.online_drama_info where drama_type='网络电影'
select distinct (era) from public.online_drama_info where drama_type='网络动画' 

--搜索页题材比对
select distinct (theme) from public.online_drama_info where drama_type='网络动画' and era='古代'
select distinct (theme) from public.online_drama_info where drama_type='网络电影' and era='现代'
select distinct (theme) from public.online_drama_info where drama_type='网络剧' and era='其它'

--网络剧详情统计
select sum(num),SUM(proportion),era,category,quarter  from public.record_summary  where type='网络剧' and year='2020'  group by era,category,quarter
select sum(num),SUM(proportion),era,category,quarter  from public.record_summary  where network_drama_type='网络电影' and year='2020'  group by era,category,quarter
select sum(num),SUM(proportion),era,category,quarter  from public.record_summary  where network_drama_type='网络动画' and year='2020'  group by era,category,quarter
select sum(num),SUM(proportion),era,category,quarter  from public.record_summary  where network_drama_type='网络剧' and year='2020'  group by era,category,quarter

---详情里的类型比对
select distinct(era,theme)from public.online_drama_info where drama_type='网络剧' and year='2019'
select distinct(era,theme)from public.online_drama_info where drama_type='网络动画' and year='2018'
select distinct(era,theme)from public.online_drama_info where drama_type='网络电影' and year='2020'

--网络剧2年的备案

select sum(num),year  from public.record_summary  where network_drama_type='网络电影'   group by year
select sum(num),year  from public.record_summary  where network_drama_type='网络动画'   group by year
select sum(num),year  from public.record_summary  where network_drama_type='网络剧'   group by year


---搜索图表比对
select sum(num),quarter  from public.record_summary  where network_drama_type='网络电影' and era='古代'and category='传奇'and year='2020'   group by quarter
select sum(num),quarter  from public.record_summary  where network_drama_type='网络剧' and era='近代'and year='2020'   group by quarter
select sum(num),quarter  from public.record_summary  where network_drama_type='网络电影' and era='近代'   group by quarter
select sum(num),quarter  from public.record_summary  where network_drama_type='网络电影' and era='近代'and category='武打'   group by quarter
select sum(num),quarter  from public.record_summary  where network_drama_type='网络动画' and year='2019'   group by quarter
--搜索列表比对
select count(*) from public.online_drama_info where drama_type='网络剧'  and year='2019' and  era='当代' 
select count(*) from public.online_drama_info where drama_type='网络剧'  and year='2020'
select count(*) from public.online_drama_info where drama_type='网络剧' and era='近代 '
select count(*) from public.online_drama_info where drama_type='网络剧' and era='近代' and theme='传奇' 
select count(*) from public.online_drama_info where drama_type='网络剧' 
select count(*) from public.online_drama_info where drama_type='网络动画'  and era='其它' and theme='传奇' and year='2019' and name like'%全职法师%'
select count(*) from public.online_drama_info where drama_type='网络剧'  and year='2019'  and era='当代' and theme='青少'
select * from public.online_drama_info where drama_type='网络电影' 
select sum(num),year  from public.record_summary  where network_drama_type='网络剧'   group by year
select *  from public.record_summary where type='网络剧'  and year='2020' and quarter=2
select sum(num)  from public.record_summary where type='网络剧' and year='2020'
select count(*) from (select * from public.online_drama_info where name like '%垃圾分类%' or  producer like '%垃圾分类%' or license  like '%垃圾分类%' or province like '%%')aa where aa. drama_type='网络剧'