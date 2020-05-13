<!--#include file=../conn.asp-->
<!--#include file=md5.asp-->
<%
if session("username")="" then 
	where = "id='"&request("orderuid")&"'"
else
	where = "uname='"&session("username")&"'"
end if
set rs11=server.CreateObject("adodb.recordset")
rs11.Open "select id,allmon,logs,sex,sheng,shi,okmon,pic,vip,hits,logtime,regIP,pic1,pic2,pic3,pic4 from A_user where "&where,conn,1,1
if rs11.recordcount>0 then
	sex=rs11("sex")
	session("sex")=sex
	uid=rs11("id")
	pic8=rs11("pic")
	pic1=rs11("pic1")
	pic2=rs11("pic2")
	pic3=rs11("pic3")
	pic4=rs11("pic4")
	okmon=int(rs11("okmon"))
	okmon789=int(rs11("okmon"))
	vip=int(rs11("vip"))
	sheng8=rs11("sheng")
	shi8=rs11("shi")
	logs=int(rs11("logs"))
	allmon=int(rs11("allmon"))
	hits=rs11("hits")
	logtime=rs11("logtime")
	regip=rs11("regIP")
end if
rs11.close
if session("username")="" then sex=1


payuid = "必填。您的商户唯一标识，注册后在设置里获得。一个24位字符串"
paytoken = "分配的Token,注册是给你的"

istype = "2"
goodsname = ""
notify_url = "http://www.91qiuzhi.com/paysapi/notify.asp"
return_url = "http://www.91qiuzhi.com/home.asp"
orderid = Year(now()) & Month(now()) & day(now()) & hour(now()) & Minute(now()) & Second(now()) & Int((999999 * Rnd) + 111111)
orderuid = uid
price = "500.00"
key = MD5(goodsname & istype & notify_url & orderid & orderuid & price & return_url & paytoken & payuid)

%>