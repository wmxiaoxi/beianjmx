--����籸����Ϣ
select* from public.online_drama_info where drama_type='���綯��' and result is not null
select count(*) from public.online_drama_info
select *  from public.record_summary
select * from public.online_drama_info where name like'%Բ��%'
select * from public.online_drama_info where year in ('2020','2019','2018','2017','2016')


--����ҳ���������c
select distinct (era) from public.online_drama_info where drama_type='�����' 
select distinct (era) from public.online_drama_info where drama_type='�����Ӱ'
select distinct (era) from public.online_drama_info where drama_type='���綯��' 

--����ҳ��ıȶ�
select distinct (theme) from public.online_drama_info where drama_type='���綯��' and era='�Ŵ�'
select distinct (theme) from public.online_drama_info where drama_type='�����Ӱ' and era='�ִ�'
select distinct (theme) from public.online_drama_info where drama_type='�����' and era='����'

--���������ͳ��
select sum(num),SUM(proportion),era,category,quarter  from public.record_summary  where type='�����' and year='2020'  group by era,category,quarter
select sum(num),SUM(proportion),era,category,quarter  from public.record_summary  where network_drama_type='�����Ӱ' and year='2020'  group by era,category,quarter
select sum(num),SUM(proportion),era,category,quarter  from public.record_summary  where network_drama_type='���綯��' and year='2020'  group by era,category,quarter
select sum(num),SUM(proportion),era,category,quarter  from public.record_summary  where network_drama_type='�����' and year='2020'  group by era,category,quarter

---����������ͱȶ�
select distinct(era,theme)from public.online_drama_info where drama_type='�����' and year='2019'
select distinct(era,theme)from public.online_drama_info where drama_type='���綯��' and year='2018'
select distinct(era,theme)from public.online_drama_info where drama_type='�����Ӱ' and year='2020'

--�����2��ı���

select sum(num),year  from public.record_summary  where network_drama_type='�����Ӱ'   group by year
select sum(num),year  from public.record_summary  where network_drama_type='���綯��'   group by year
select sum(num),year  from public.record_summary  where network_drama_type='�����'   group by year


---����ͼ��ȶ�
select sum(num),quarter  from public.record_summary  where network_drama_type='�����Ӱ' and era='�Ŵ�'and category='����'and year='2020'   group by quarter
select sum(num),quarter  from public.record_summary  where network_drama_type='�����' and era='����'and year='2020'   group by quarter
select sum(num),quarter  from public.record_summary  where network_drama_type='�����Ӱ' and era='����'   group by quarter
select sum(num),quarter  from public.record_summary  where network_drama_type='�����Ӱ' and era='����'and category='���'   group by quarter
select sum(num),quarter  from public.record_summary  where network_drama_type='���綯��' and year='2019'   group by quarter
--�����б�ȶ�
select count(*) from public.online_drama_info where drama_type='�����'  and year='2019' and  era='����' 
select count(*) from public.online_drama_info where drama_type='�����'  and year='2020'
select count(*) from public.online_drama_info where drama_type='�����' and era='���� '
select count(*) from public.online_drama_info where drama_type='�����' and era='����' and theme='����' 
select count(*) from public.online_drama_info where drama_type='�����' 
select count(*) from public.online_drama_info where drama_type='���綯��'  and era='����' and theme='����' and year='2019' and name like'%ȫְ��ʦ%'
select count(*) from public.online_drama_info where drama_type='�����'  and year='2019'  and era='����' and theme='����'
select * from public.online_drama_info where drama_type='�����Ӱ' 
select sum(num),year  from public.record_summary  where network_drama_type='�����'   group by year
select *  from public.record_summary where type='�����'  and year='2020' and quarter=2
select sum(num)  from public.record_summary where type='�����' and year='2020'
select count(*) from (select * from public.online_drama_info where name like '%��������%' or  producer like '%��������%' or license  like '%��������%' or province like '%%')aa where aa. drama_type='�����'