<!--#include file=common.asp-->
<%
paysapi_id = request("paysapi_id")
orderid = request("orderid")
price = request("price")
realprice = request("realprice")
orderuid = request("orderuid")
uid = orderuid
key = request("key")
paytoken = "分配的Token,注册是给你的"

if key=MD5(orderid & orderuid & paysapi_id & price & realprice & paytoken) then
	payMoney = realprice
	set rs11=server.CreateObject("adodb.recordset")
	sql="select * from A_user where id='"&uid&"'"
	rs11.Open sql,conn,2,3
	if not rs11.eof then
		if realprice>=500 then
			dok=36500
		elseif realprice >=300 then 
			dok = 365
		elseif realprice >=100 then
			dok = 30
		else 
			dok = 1
		end if 
		
		if trim(rs11("vipEndTime"))<>"" then
			nok=rs11("vipEndTime")
			rs11("vipEndTime")=DateAdd("d",dok,nok)
		else
			nok=date()
			rs11("vipStartTime")=nok
			rs11("vipEndTime")=DateAdd("d",dok,nok)
		end if

		rs11("okmon")=Cint(rs11("okmon"))+cint(payMoney*1.0)
		rs11("allmon")=cint(rs11("allmon"))+cint(payMoney*1.0)
		rs11("vip")=1
		rs11.update
	end if
	rs11.close
	set rs11=nothing
	response.Write "success"
else
	response.Write "error"
end if
%>