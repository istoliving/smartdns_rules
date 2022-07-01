rm /etc/smartdns/cn.conf   /etc/smartdns/proxy.conf   /etc/smartdns/block.conf

curl  "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/direct-list.txt"  >> /etc/smartdns/cn.conf
curl  "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/apple-cn.txt"    >> /etc/smartdns/cn.conf
curl  "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/google-cn.txt"   >> /etc/smartdns/cn.conf

curl  "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/proxy-list.txt"  >> /etc/smartdns/proxy.conf
curl  "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/gfw.txt"        >> /etc/smartdns/proxy.conf
curl  "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/greatfire.txt"  >> /etc/smartdns/proxy.conf

curl  "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/reject-list.txt"  >> /etc/smartdns/block.conf
curl  "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/win-spy.txt"  >> /etc/smartdns/block.conf
curl  "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/win-extra.txt"  >> /etc/smartdns/block.conf

sed "s/^full://g;s/^regexp:.*$//g;s/^/nameserver \//g;s/$/\/cn/g" -i /etc/smartdns/cn.conf         #去除full regexp
sed "s/^full://g;s/^regexp:.*$//g;s/^/nameserver \//g;s/$/\/proxy/g" -i /etc/smartdns/proxy.conf
sed "s/^full://g;s/^regexp:.*$//g;s/^/address \//g;s/$/\/#/g" -i /etc/smartdns/block.conf

systemctl restart smartdns
