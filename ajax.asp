<!--#include file=common.asp-->
<%
goodsname = "你的商品名称,可以传入,也可以从数据库取"
istype=request("istype") //支付类型
notify_url = "http://www.91qiuzhi.com/paysapi/notify.asp" //通知回调网址,请替换成你自已的
orderid=request("orderid") //商户自定义订单号
orderuid = "商户自定义客户号,强烈建议填写。可以填用户名，也可以填您数据库中的用户uid"
price=request("price") //价格,单位：元。精确小数点后2位
return_url = "http://www.91qiuzhi.com/home.asp" //跳转网址,用户支付成功后，我们会让用户浏览器自动跳转到这个网址
paytoken = "分配的Token,注册是给你的"
payuid = "必填。您的商户唯一标识，注册后在设置里获得。一个24位字符串"
key2 = MD5(goodsname & istype & notify_url & orderid & orderuid & price & return_url & paytoken & payuid)
response.Write key2
response.end
%>