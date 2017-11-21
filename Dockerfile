FROM centos  
MAINTAINER chenyufeng "yufengcode@gmail.com"  
   
RUN yum install -y mysql-server mysql  
   
RUN /etc/init.d/mysqld start &&\  
    mysql -e "grant all privileges on *.* to 'root'@'%' identified by '123456';"&&\  
    mysql -e "grant all privileges on *.* to 'root'@'localhost' identified by '123456';"&&\  
    mysql -u root -p123456 -e "show databases;"  
   
EXPOSE 3307  
   
CMD ["/usr/bin/mysqld_safe"]



