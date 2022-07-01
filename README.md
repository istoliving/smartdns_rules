# smartdns_rules
smartdns使用Loyalsoldier/v2ray-rules-dat规则分流查询   
命中cn.conf将用国内服务器   
命中proxy.conf将用国外服务器   
命中block.conf将用屏蔽   

# 使用方法
1. 复制 所有文件到/etc/smartdns中

2. 重启 smartdns   
systemctl restart smartdns   

更新规则   
bash /etc/smartdns/update.sh

# 感谢
Loyalsoldier/v2ray-rules-dat   https://github.com/Loyalsoldier/v2ray-rules-dat
