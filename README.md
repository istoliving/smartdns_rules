# smartdns_rules
smartdns使用Loyalsoldier/v2ray-rules-dat规则分流查询  
实际是使用正则表达式将 Loyalsoldier/v2ray-rules-dat 的几个列表转成smartdns的配置文件（见update.sh）   
命中cn.conf将用国内服务器   
命中proxy.conf将用国外服务器   
命中block.conf将屏蔽   

# 使用方法
1. 复制 所有文件到/etc/smartdns中

2. 重启 smartdns   
systemctl restart smartdns   

更新规则   
bash /etc/smartdns/update.sh  
可以将这条加入定时任务，定时更新分流规则   
   
可以在smartdns.conf自定义服务器 

# 感谢
Loyalsoldier/v2ray-rules-dat   https://github.com/Loyalsoldier/v2ray-rules-dat
