--���Ӿ�

select * from public.teleplay_record_info where name like '%��÷��%'

select * from public.teleplay_record_info where  id='306'

update public.teleplay_record_info set department_reult='',era='����',license='�������ֵ�03212',location='�㶫',name='��÷��',number='50',period='24����',producer='��ɽ����Ӱ���Ļ���չ���޹�˾' ,province_result='ͬ�ⱸ���������ֵܾ��Ӿ����˾��ʾ��',
public_month='12',public_year='2019',remark='',shooting_time='2020.7',synopsis='������Ҫ��
˧�������ʡ��У��ˮ��Ա��������תУ�ص���У��̼��������꼶����ɳ�ɱ���ǿ�ҵ���������ɳ�ɱ�����һ�δ���ս��ʧ����һ��ˮ�⽼�Σ�ɳ�ɱ�����װ��ˮȴ���������ȣ�ȴ�����ʹ������������������ˮ�ϰ�����С����ɳ�ɱ����ھ������������ϵİ�ɼ詣��������ص��ת����ͨ����Զɳ�ɱ�������ĸ�׵�ì��������һ�α�����������ȺŹ�¼��ð�ɼ�����Σ����ɳ�ɱ������ɼ��ڱ��ȵĽӽ��У������˽�����Ρ����˾�㵵��ǣ����ഺ���Ե���ѡ�ϣ���ɼ�ȴ���ഴ������ר��ͻ���ɼ����γ����������ǿ�����Ŀ��⡣������������ɳ�ɱ����ġ����ܡ���������Ϊ��������ʦ��Ů����֪�����������ܣ�����֮��ʹ����ͦ������뱴��������ᣬ����ɳ�ɱ��������λ���Ѷ����Լ��ķ�ʽ�������ǵ����顣'
where  name like '%��÷��%' and  id='306'


update public.teleplay_record_info set department_reult=null,era=null,license=null,location=null,name='��÷��',number=null,period=null,producer=null ,province_result=null,
public_month=null,public_year=null,remark=null,shooting_time=null,synopsis=null
where   id='306'


--��Ӱ     �ഺ������
select *  from public.movie_record_info where id='43956'

update public.movie_record_info set company_name=null,location=null,public_month=null,public_year=null,record_item_number=null,record_result=null,screenwriter=null,synopsis=null,title=null
where   id='43956'

update public.movie_record_info set company_name='�й���·�Ĺ���',location='ֱ��',public_month='4',public_year='2011',record_item_number='Ӱ�籸��[2011]��543��',record_result='ͬ������',screenwriter='����ǿ',synopsis='����������Ů�г����ĵ����˾��Զ��������꣬ȴ��Ϊ���������һֱû����ĸ�׿��ڡ�
',title='2011��04�£���Ѯ��'
where   id='43956'



--�����

select * from public.online_drama_info where drama_type='�����'  and id='6'
update public.online_drama_info set license=null,number=null,producer=null,province=null,quarter=null,result=null,year=null where drama_type='�����'  and id='6'
update public.online_drama_info set license='V11004342001101',number='16',producer='�����Ѻ���������Ϣ�������޹�˾',province='����',quarter='1',result=null,year='2020' where drama_type='�����'  and id='6'