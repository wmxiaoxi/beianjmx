--电视剧

select * from public.teleplay_record_info where name like '%青梅糖%'

select * from public.teleplay_record_info where  id='306'

update public.teleplay_record_info set department_reult='',era='当代',license='（粤）字第03212',location='广东',name='青梅糖',number='50',period='24个月',producer='佛山华览影视文化发展有限公司' ,province_result='同意备案，报请总局电视剧管理司公示。',
public_month='12',public_year='2019',remark='',shooting_time='2020.7',synopsis='内容提要：
帅气阳光的省体校跳水队员林其彬因故转校重点高中，刺激引发了年级焦点沙律贝贝强烈的争斗欲。沙律贝贝在一次次挑战中失利。一次水库郊游，沙律贝贝假装溺水却被林其彬相救，却无意间使后者消除了心因性跳水障碍。从小就是沙律贝贝邻居与其龃龉不断的白杉瑭，主动从重点班转调普通班疏远沙律贝贝，与母亲的矛盾升级。一次被误卷入的篮球场群殴事件让白杉瑭陷入危机。沙律贝贝与白杉瑭在被迫的接近中，增进了解和信任。令人惊愕的是，在青春代言的人选上，白杉瑭却以青创发明和专利突出成绩，形成与林其彬最强有力的抗衡。于彦与杨子是沙律贝贝的“闺密”。于彦因为是物理老师的女儿，知晓林其彬的秘密，恻隐之心使她暗挺林其彬，与贝贝产生误会，最终沙律贝贝理解两位好友都以自己的方式捍卫她们的友情。'
where  name like '%青梅糖%' and  id='306'


update public.teleplay_record_info set department_reult=null,era=null,license=null,location=null,name='青梅糖',number=null,period=null,producer=null ,province_result=null,
public_month=null,public_year=null,remark=null,shooting_time=null,synopsis=null
where   id='306'


--电影     青春动车组
select *  from public.movie_record_info where id='43956'

update public.movie_record_info set company_name=null,location=null,public_month=null,public_year=null,record_item_number=null,record_result=null,screenwriter=null,synopsis=null,title=null
where   id='43956'

update public.movie_record_info set company_name='中国铁路文工团',location='直备',public_month='4',public_year='2011',record_item_number='影剧备字[2011]第543号',record_result='同意拍摄',screenwriter='刘惠强',synopsis='年轻美丽的女列车长夏丹璐与乘警赵东相恋三年，却因为条件悬殊而一直没有向母亲开口。
',title='2011年04月（上旬）'
where   id='43956'



--网络剧

select * from public.online_drama_info where drama_type='网络剧'  and id='6'
update public.online_drama_info set license=null,number=null,producer=null,province=null,quarter=null,result=null,year=null where drama_type='网络剧'  and id='6'
update public.online_drama_info set license='V11004342001101',number='16',producer='北京搜狐互联网信息服务有限公司',province='北京',quarter='1',result=null,year='2020' where drama_type='网络剧'  and id='6'