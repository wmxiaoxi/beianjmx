--������б�5������ͼ
select sum(num),year  from public.record_summary  where type='���Ӿ�'  and  year between '2016' and '2020' group by year

--������������ݲ�ѯ����ͼ
select sum(num),SUM(proportion) , month  from public.record_summary  where type='���Ӿ�' and year='2019'  group by month

--���������������ѯ����ͼ
select sum(num),year  from public.record_summary  where type='���Ӿ�' and   era='����' group by year

--�������������+��Ĳ�ѯ����ͼ
select sum(num),year from public.record_summary  where type='���Ӿ�'   and category='����'and era='����'  group by year

--�������������+��ݲ�ѯ����ͼ
select sum(num),month from public.record_summary  where type='���Ӿ�' and era='�ִ�'  and year='2019' group by month

--�������������+���+��ݲ�ѯ����ͼ
select sum(num),month from public.record_summary  where type='���Ӿ�' and era='����'and category='����'  and year='2020' group by month
--��ϸͳ������ͼ��ѯ
select sum(num),SUM(proportion),era,category,month  from public.record_summary  where type='���Ӿ�' and year='2019'  group by category,month,era
--��ϸͳ��ҳ����
select distinct(era,theme) from teleplay_record_info  where public_year='2020'

--���Ӿ�����ҳ������ȶ�
select distinct(era ) from teleplay_record_info 

--���Ӿ��Ѷ�ҳ�������ıȶ�
select distinct(theme) from public.teleplay_record_info  where  era='����'
select distinct(theme) from public.teleplay_record_info  where  era='�Ŵ�'
select distinct(theme) from public.teleplay_record_info  where  era='�ش�'
select distinct(theme) from public.teleplay_record_info  where   era='����'
select distinct(theme) from public.teleplay_record_info  where   era='����'
select distinct(theme) from public.teleplay_record_info  where   era='�ִ�'

---�����Ա�
select sum(num) from public.record_summary where type='���Ӿ�'
select count(*)from  public.teleplay_record_info 

select * from public.record_summary where type='���Ӿ�' and era='����'
select * from public.teleplay_record_info where name like'%�����е�����ʱ��%'


--�����б�
select count(*) from  public.teleplay_record_info  where era='����'
select count(*) from  public.teleplay_record_info  where era='����'
select count(*) from  public.teleplay_record_info  where  public_year='2020'
select * from  public.teleplay_record_info  where  public_year='2020' and producer like '%����%' and era='�ִ�' and theme='����' 
select count(*) from  public.teleplay_record_info  where  era='����' and theme='����' and name like '%һ�ԾŶ�%' 
select* from  public.teleplay_record_info  where  era='�ش�' and theme='����' 
select count(*) from  public.teleplay_record_info  where  public_year='2019'  and era='����' and theme='����' 
select aa.count(*) from (select * from  public.teleplay_record_info  where   name like '%������%' or synopsis like '%������%' or producer like '%������%' or  location like '%������%' or license like '%������%')aa where  aa.public_year='2020' 
select* from  public.teleplay_record_info  where  synopsis is null


select count(*) from (select * from  public.teleplay_record_info  where   name like '%�Ϻ�%' or synopsis like '%�Ϻ�%' or producer like '%�Ϻ�%' or  location like '%�Ϻ�%' or license like '%�Ϻ�%')aa  where  aa.public_year='2019'and aa.era='����' and aa.theme='����'