select count(*) as count1 from public.movie_record_info 

select * from public.data_daily where classification='��ҵ��̬' and date between current_date - interval '6 day' and current_date

select sum(num) from public.record_summary where type='��Ӱ' 
select * from public.record_summary where type='��Ӱ' 
--����ͳ��ҳ������
select distinct(movie_type) from public.movie_record_info  where public_year='2019'
select year,sum(num)  from public.record_summary  where type='��Ӱ'  group by year

--��Ӱ����ϸͳ��
select sum(num),SUM(proportion),category,month  from public.record_summary  where type='��Ӱ' and year='2019'  group by category,month

--��Ӱ����
select distinct (category)  as aa from public.record_summary where type='��Ӱ' and year='2016' 
select  distinct (category)  from public.record_summary where type='��Ӱ'
--��Ӱ������Ϣ�����б�
select count(*) from public.movie_record_info  where name like '%��쿻�%'  or company_name like '%��쿻�%'   or  location like '%��쿻�%' or record_item_number like '%��쿻�%' or synopsis like '%��쿻�%' or screenwriter like '%��쿻�%' 
select count(*) from public.movie_record_info  where movie_type='����ӰƬ'
select count(*) from (select public_year,movie_type from  public.movie_record_info  where name like '%����%'  or company_name like '%����%'   or  location like '%����%' or record_item_number like '%����%' or synopsis like '%����%' or screenwriter like '%����%' )aa  where  aa.movie_type='����ӰƬ' and  aa.public_year='2019'
select count(*) from public.movie_record_info  where    public_year='2019'
select count(*) from public.movie_record_info  where movie_type='��¼ӰƬ' 

--��Ӱ������ѯ����ͼ
--������
select year,sum(num)  from public.record_summary  where type='��Ӱ' and category='����ӰƬ' group by year
--�����
select sum(num),month  from public.record_summary where type='��Ӱ' and year='2019' group by month
--�����+����
select sum(num),month  from public.record_summary where type='��Ӱ'  and category='����Ƭ'and year='2019' group by MONTH


select count(*)from public.movie_record_info 
select count(*),name from public.movie_record_info  GROUP BY name
select  * from public.movie_record_info where name like'%У��������%'
select  count(*) from public.movie_record_info where public_year='2019' and movie_type='����ӰƬ' 

select  * from public.movie_record_info  where public_year='2011'




