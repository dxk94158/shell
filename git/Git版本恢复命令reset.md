Git�汾�ָ�����reset

reset������3�ַ�ʽ��

git reset �Cmixed����ΪĬ�Ϸ�ʽ�������κβ�����git reset����ʱ���ַ�ʽ�������˵�ĳ���汾��ֻ����Դ�룬����commit��index��Ϣ
 

git reset �Csoft�����˵�ĳ���汾��ֻ������commit����Ϣ������ָ���index fileһ���������Ҫ�ύ��ֱ��commit����
 

git reset �Chard�����׻��˵�ĳ���汾�����ص�Դ��Ҳ���Ϊ��һ���汾������
 

������һЩreset��ʾ����
 


#�����������ݵ���һ���汾   
git reset HEAD^  
 

#����a.py����ļ��İ汾����һ���汾  
git reset HEAD^ a.py  

#��ǰ���˵���3���汾  
git reset �Csoft HEAD~3  

#�����ص�״̬���˵���Զ�̵�һ��  
git reset �Chard origin/master  

#���˵�ĳ���汾  
git reset 057d  
 
#���˵���һ���ύ��״̬������ĳһ�ε�commit��ȫ����Ľ���һ��commit  
git revert HEAD  
 

 
�������ĳ���޸���ĳЩ���ݣ������Ѿ�commit�����زֿ⣬�����Ѿ�push��Զ�ֿ̲���

��������£�������ѱ��غ�Զ�ֿ̲ⶼ���˵�ĳ���汾������ô���أ�

ǰ�潲����git resetֻ���ڱ��زֿ��л��˰汾����Զ�ֿ̲�İ汾����仯

��������ʱ����reset�ˣ��������git pull����ô��Զ�ֿ̲�������ֻ�ͱ���֮ǰ�汾�����ݽ���merge

�Ⲣ����������Ҫ�Ķ�������ʱ������2�ְ취�����������⣺

ֱ����Զ��server�Ĳֿ�Ŀ¼�£�ִ��git reset �Csoft 10efa�����ˡ�ע�⣺��Զ�̲���ʹ��mixed��hard����
 

�ڱ���ֱ�Ӱ�Զ�̵�master��֧��ɾ����Ȼ���ٰ�reset��ķ�֧���ݸ�push��ȥ�����£�
 


#�½�old_master��֧������  
git branch old_master  

#push��Զ��  
git push origin old_master:old_master  

#���زֿ���˵�ĳ���汾   
git reset �Chard bae168  
 
#ɾ��Զ�̵�master��֧  
git push origin :master  
 

#���´���master��֧  
git push origin master  


��ɾ��Զ��master��֧ʱ�����ܻ������⣬���£�


$ git push origin :master  
 
error: By default, deleting the current branch is denied, because the next  
error: 'git clone' won't result in any file checked out, causing confusion.  
error:  
error: You can set 'receive.denyDeleteCurrent' configuration variable to  
error: 'warn' or 'ignore' in the remote repository to allow deleting the  
error: current branch, with or without a warning message. 
error:  
error: To squelch this message, you can set it to 'refuse'.  
error: refusing to delete the current branch: refs/heads/master  

To git@xx.sohu.com:gitosis_test  
 

 ! [remote rejected] master (deletion of the current branch prohibited)  
 

error: failed to push some refs to 'git@xx.sohu.com:gitosis_test'  

��ʱ��Ҫ��Զ�ֿ̲�Ŀ¼�£�����git��receive.denyDeleteCurrent����
 
git receive.denyDeleteCurrent warn  

Ȼ�󣬾Ϳ���ɾ��Զ�̵�master��֧��

��Ȼ˵������2�ַ������Ի���Զ�̷�֧�İ汾������2�ַ�ʽ����ͦΣ�յģ���Ҫ������������

from��http://www.360doc.com/content/11/0117/18/2036337_87176886.shtml