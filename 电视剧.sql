--按年份列表5年曲线图
select sum(num),year  from public.record_summary  where type='电视剧'  and  year between '2016' and '2020' group by year

--按搜索条件年份查询曲线图
select sum(num),SUM(proportion) , month  from public.record_summary  where type='电视剧' and year='2019'  group by month

--按搜索条件年代查询曲线图
select sum(num),year  from public.record_summary  where type='电视剧' and   era='近代' group by year

--按搜索条件年代+题材查询曲线图
select sum(num),year from public.record_summary  where type='电视剧'   and category='传记'and era='近代'  group by year

--按搜索条件年代+年份查询曲线图
select sum(num),month from public.record_summary  where type='电视剧' and era='现代'  and year='2019' group by month

--按搜索条件年代+题材+年份查询曲线图
select sum(num),month from public.record_summary  where type='电视剧' and era='近代'and category='传奇'  and year='2020' group by month
--详细统计曲线图查询
select sum(num),SUM(proportion),era,category,month  from public.record_summary  where type='电视剧' and year='2019'  group by category,month,era
--详细统计页类型
select distinct(era,theme) from teleplay_record_info  where public_year='2020'

--电视剧搜索页面年代比对
select distinct(era ) from teleplay_record_info 

--电视剧搜多页年代下题材比对
select distinct(theme) from public.teleplay_record_info  where  era='近代'
select distinct(theme) from public.teleplay_record_info  where  era='古代'
select distinct(theme) from public.teleplay_record_info  where  era='重大'
select distinct(theme) from public.teleplay_record_info  where   era='其他'
select distinct(theme) from public.teleplay_record_info  where   era='当代'
select distinct(theme) from public.teleplay_record_info  where   era='现代'

---条数对比
select sum(num) from public.record_summary where type='电视剧'
select count(*)from  public.teleplay_record_info 

select * from public.record_summary where type='电视剧' and era='近代'
select * from public.teleplay_record_info where name like'%记忆中的美好时光%'


--搜索列表
select count(*) from  public.teleplay_record_info  where era='近代'
select count(*) from  public.teleplay_record_info  where era='其它'
select count(*) from  public.teleplay_record_info  where  public_year='2020'
select * from  public.teleplay_record_info  where  public_year='2020' and producer like '%海润%' and era='现代' and theme='军旅' 
select count(*) from  public.teleplay_record_info  where  era='近代' and theme='青少' and name like '%一言九鼎%' 
select* from  public.teleplay_record_info  where  era='重大' and theme='革命' 
select count(*) from  public.teleplay_record_info  where  public_year='2019'  and era='近代' and theme='传奇' 
select aa.count(*) from (select * from  public.teleplay_record_info  where   name like '%日升昌%' or synopsis like '%日升昌%' or producer like '%日升昌%' or  location like '%日升昌%' or license like '%日升昌%')aa where  aa.public_year='2020' 
select* from  public.teleplay_record_info  where  synopsis is null


select count(*) from (select * from  public.teleplay_record_info  where   name like '%上海%' or synopsis like '%上海%' or producer like '%上海%' or  location like '%上海%' or license like '%上海%')aa  where  aa.public_year='2019'and aa.era='近代' and aa.theme='传奇'