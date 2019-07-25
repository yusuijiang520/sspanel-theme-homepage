
#!/bin/bash
##检查操作系统
check_sys(){
	if [[ -f /etc/redhat-release ]]; then
		release="centos"
	elif cat /etc/issue | grep -q -E -i "debian"; then
		release="debian"
	elif cat /etc/issue | grep -q -E -i "ubuntu"; then
		release="ubuntu"
	elif cat /etc/issue | grep -q -E -i "centos|red hat|redhat"; then
		release="centos"
	elif cat /proc/version | grep -q -E -i "debian"; then
		release="debian"
	elif cat /proc/version | grep -q -E -i "ubuntu"; then
		release="ubuntu"
	elif cat /proc/version | grep -q -E -i "centos|red hat|redhat"; then
		release="centos"
    fi
	bit=`uname -m`
}

##检查是否root用户
[ $(id -u) != "0" ] && { echo -e " “\033[31m Error: 必须使用root用户执行此脚本！\033[0m”"; exit 1; }
##定义常用属性
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info="${Green_font_prefix}[信息]${Font_color_suffix}"
Error="${Red_font_prefix}[错误]${Font_color_suffix}"
Tip="${Green_font_prefix}[注意]${Font_color_suffix}"

clear
#宝塔sspanel-theme-homepage快速部署工具
echo -e "感谢使用 “\033[32m 宝塔sspanel-theme-homepage快速部署工具 \033[0m”"
echo "----------------------------------------------------------------------------"
echo -e "请注意这些要求:“好像没啥要求鸭~~~"
echo "----------------------------------------------------------------------------"
echo -e "请注意:“网站目录默认是你的域名，例如/www/wwwroot/w.2q.gs"
stty erase '^H' && read -p "请输入宝塔面板添加的网站目录,默认地址（例如:w.2q.gs，不带http/https）：" website
themetype="theme-one"
githubUrl="https://raw.githubusercontent.com/lizhongnian/sspanel-theme-homepage/master"
#日志
echo -e "\033[34m=============================================================================\033[0m"
echo -e "\033[31m       	———————————————请选择安装sspanel-theme-homepage前方的数字———————————————————\033[0m"
echo -e "\033[35m                1.theme-one(演示地址：https://w.2q.gs/theme-one) \033[0m"
echo -e "\033[35m                2.theme-two(演示地址：https://w.2q.gs/theme-two) \033[0m"
echo -e "\033[35m                3.theme-three(演示地址：https://w.2q.gs/theme-three) \033[0m"
echo -e "\033[34m=============================================================================\033[0m"
echo ""
echo -e "\033[31m                希望此脚本能帮助你，七彩blog博客：https://www.7colorblog.com\033[0m"
echo -e "\033[31m                欢迎加入七彩blog交流群，群号码：901286939\033[0m"
echo ""
echo -e "\033[34m==============================================================================\033[0m"
stty erase '^H' && read -p "请您选择的theme-homepage：" themestatus
case "$themestatus" in
	1)
	themetype="theme-one"
	echo -e "${Info} 您选择了theme-one(演示地址：https://w.2q.gs/theme-one)"
	;;
	2)
	themetype="theme-two"
	echo -e "${Info} 您选择了theme-two(演示地址：https://w.2q.gs/theme-two)"
	;;
	3)
	themetype="theme-three"
	echo -e "${Info} 您选择了theme-three(演示地址：https://w.2q.gs/theme-three)"
	;;
	*)
	echo -e  "${Error} 请输入正确值 [1/2/3]，请重新执行安装程序" && exit 1
	;;
esac
sleep 1
clear
echo ""
echo -e "${Info} 请确认您输入的网站域名：$website"
echo -e "${Info} 请确认您选择的theme-homepage：$themetype"
echo ""
stty erase '^H' && read -p " 请输入数字(1：继续；2：退出) [1/2]:" status
case "$status" in
	1)
	echo -e "${Info} 您选择了继续，开始安装程序！"
	;;
	2)
	echo -e "${Tip} 您选择了退出，请重新执行安装程序！" && exit 1
	;;
	*)
	echo -e  "${Error} 请输入正确值 [1/2]，请重新执行安装程序" && exit 1
	;;
esac
sleep 1
echo -e "${Info} 请等待系统自动操作......"
cd /www/wwwroot/$website
##安装unzip
echo -e "${Info} 正在检测安装unzip工具"
#yum install unzip  -y
echo -e "${Info} 检测安装unzip工具已完成"
sleep 1
##下载解压拷贝源码

#sleep 1
##初始化站点信息
#echo -e "${Info} 正在配置站点基本信息"
#cd /www/wwwroot/$website



##重启nginx
sleep 1
echo -e "${Info} 正在重启NGINX"
#/etc/init.d/nginx restart
echo -e "${Info} 重启NGINX已完成"
sleep 3
echo -e "${Tip} 安装即将完成，倒数五个数！"
sleep 1
clear
echo "-----------------------------"
echo "#############################"
echo "########           ##########"
echo "########   ##################"
echo "########   ##################"
echo "########           ##########"
echo "###############    ##########"
echo "###############    ##########"
echo "########           ##########"
echo "#############################"
sleep 1
clear
echo "-----------------------------"
echo "#############################"
echo "#######   ####   ############"
echo "#######   ####   ############"
echo "#######   ####   ############"
echo "#######               #######"
echo "##############   ############"
echo "##############   ############"
echo "##############   ############"
echo "#############################"
sleep 1
clear
echo "-----------------------------"
echo "#############################"
echo "########            #########"
echo "#################   #########"
echo "#################   #########"
echo "########            #########"
echo "#################   #########"
echo "#################   #########"
echo "########            #########"
echo "#############################"
sleep 1
clear
echo "-----------------------------"
echo "#############################"
echo "########           ##########"
echo "################   ##########"
echo "################   ##########"
echo "########           ##########"
echo "########   ##################"
echo "########   ##################"
echo "########           ##########"
echo "#############################"
sleep 1
clear
echo "-----------------------------"
echo "#############################"
echo "############   ##############"
echo "############   ##############"
echo "############   ##############"
echo "############   ##############"
echo "############   ##############"
echo "############   ##############"
echo "############   ##############"
echo "#############################"
echo "-----------------------------"
sleep 1
clear
echo "--------------------------------------------------------------------------------"
echo -e "${Info} 部署完成，请打开$website即可浏览,ctrl+f5刷新浏览器"
echo -e "${Info} 默认会将你的默认index.tpl备份重命名为 $themetype.tpl"
echo -e "${Info} 打不开站点请将备份的tpl文件改回去即可"
echo -e "${Info} 自定义配置，请打开/www/wwwroot/$website//resources/views/material/index.tpl进行修改"
echo -e "${Info} github地址:https://github.com/lizhongnian/sspanel-theme-homepage"
echo -e "${Info} 博客地址:https://www.7colorblog.com/"
echo "--------------------------------------------------------------------------------"
