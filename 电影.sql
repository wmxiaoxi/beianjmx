select count(*) as count1 from public.movie_record_info 

select * from public.data_daily where classification='行业动态' and date between current_date - interval '6 day' and current_date

select sum(num) from public.record_summary where type='电影' 
select * from public.record_summary where type='电影' 
--详情统计页的类型
select distinct(movie_type) from public.movie_record_info  where public_year='2019'
select year,sum(num)  from public.record_summary  where type='电影'  group by year

--电影的详细统计
select sum(num),SUM(proportion),category,month  from public.record_summary  where type='电影' and year='2019'  group by category,month

--电影类型
select distinct (category)  as aa from public.record_summary where type='电影' and year='2016' 
select  distinct (category)  from public.record_summary where type='电影'
--电影备案信息搜索列表
select count(*) from public.movie_record_info  where name like '%郭炜华%'  or company_name like '%郭炜华%'   or  location like '%郭炜华%' or record_item_number like '%郭炜华%' or synopsis like '%郭炜华%' or screenwriter like '%郭炜华%' 
select count(*) from public.movie_record_info  where movie_type='动画影片'
select count(*) from (select public_year,movie_type from  public.movie_record_info  where name like '%垃圾%'  or company_name like '%垃圾%'   or  location like '%垃圾%' or record_item_number like '%垃圾%' or synopsis like '%垃圾%' or screenwriter like '%垃圾%' )aa  where  aa.movie_type='故事影片' and  aa.public_year='2019'
select count(*) from public.movie_record_info  where    public_year='2019'
select count(*) from public.movie_record_info  where movie_type='纪录影片' 

--电影搜索查询曲线图
--按类型
select year,sum(num)  from public.record_summary  where type='电影' and category='特种影片' group by year
--按年份
select sum(num),month  from public.record_summary where type='电影' and year='2019' group by month
--按年份+类型
select sum(num),month  from public.record_summary where type='电影'  and category='合拍片'and year='2019' group by MONTH


select count(*)from public.movie_record_info 
select count(*),name from public.movie_record_info  GROUP BY name
select  * from public.movie_record_info where name like'%校花村主任%'
select  count(*) from public.movie_record_info where public_year='2019' and movie_type='故事影片' 

select  * from public.movie_record_info  where public_year='2011'




