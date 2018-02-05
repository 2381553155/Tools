drop procedure if exists selectWxpay;
delimiter // 
create procedure selectWxpay( 
in  filed   varchar(50), 
in  op    varchar(50), 
in  filedVal  varchar(50)
)
begin 
set @countL=10; 
SET @strsql =concat('select * from s_wxpay_logs '," where ",filed,op,"'",filedVal,"'"); 
-- 预定义一个语句，并将它赋给stmtsql 
PREPARE stmtsql FROM @strsql; 
EXECUTE stmtsql; 
-- 释放一个预定义语句的资源 
DEALLOCATE PREPARE stmtsql;
end //delimiter ;
call selectWxpay('openid','=','oj9EwwDPJVPKnuk_68d_FEspFe8M');




1、查询数据量中所有的记录条数

select
table_name,table_rows from information_schema.`TABLES` where
table_schema='smartcs'

 

select
sum(table_rows) from information_schema.`TABLES` where table_schema='smartcs' 

