<!--#include file=common.asp-->
<!--#include file=../checklogin.asp-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>网站标题</title>
<link href="/css/s.css" rel="stylesheet" type="text/css">
<link href="/css/main.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/js/City.js"></script>
<script type="text/javascript" src="/js/jquery-1.9.1.min.js"></script>

    <script type="text/javascript">
		function HyShow(){
			document.getElementById('HyShowPic').style.display = document.getElementById('HyShowPic').style.display == 'block' ? 'none' : 'block';
		}
	</script>
	<script type="text/javascript">
function addCookie()
{
    if (document.all)
       {
         window.external.addFavorite(''+window.location.host+'/?fav',document.title);
       }
      else if (window.sidebar)
      {
          window.sidebar.addPanel('', window.location.host, "");
    }
}

</script>
    <script type="text/javascript">
		function CheckForm(){
			alert('Vip会员才能使用搜索功能！请升级VIP会员！');
			return false;	
		}
	</script>
<style type="text/css">
<!--
body {
	background-color: #DFDFDF;
}
#Layer1 {
	position:absolute;
	width:130px;
	height:52px;
	z-index:1;
	left: 888px;
	top: 67px;
}
.STYLE1 {font-size: 14}
-->
</style>
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="48" height="30" background="/images/home_01.gif">&nbsp;</td>
    <td width="960" background="/images/home_01.gif"></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="59" background="/images/tbg.gif" valign="top"><table width="1008" height="59" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="48" height="59">&nbsp;</td>
        <td width="167" background="/images/tbg.gif" valign="top"><img src="/images/rz/logo.png" alt="" width="170" height="55" /></td>
        <td width="574" background="/images/logot2.gif" valign="top"><table width="575" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="17" colspan="5">&nbsp;</td>
            </tr>
        </table></td>
        <td width="27" background="/images/tbg.gif">&nbsp;</td>
        <td width="151" background="/images/logot3.gif"><table width="150" height="60" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="22" colspan="2">&nbsp;</td>
            </tr>
            <tr>
              <td width="42" height="38"></td>
              <td width="108"><%if session("username")<>"" then%>
                  <li><a href="/Message.asp?action=1" class="font14 STYLE1" ><strong>消息(未读</strong><%=conn.execute("select count(id) from A_messege where touname='"&session("username")&"' and readok=0")(0)%>)</a></li>
                <%end if%></td>
            </tr>
        </table></td>
        <td width="41" background="/images/tbg.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>

<link href="/css/shop.css" type="text/css" rel="stylesheet" />
<style type="text/css">
    body{background-color:#fff0f7;}
    .Main{ margin:0 auto; width:1000px; background-color:#FFFFFF;font-size:13px; font-family:"微软雅黑"; color:#8f8f8f; }
    .Main1{ margin:0 auto; width:1000px; background-color:#FFFFFF; border:1px solid #f9c6da; margin-top:16px; _margin-top:8px;  }
    .PaySlide{ margin:0 auto; width:997px; height:198px; border:1px solid #f9c6da;}
    .JinBiCz{ height:94px;background-color:#FFFFFF;border-bottom:1px solid #f9c6da; }

    .VipDj{ height:94px; width:650px; float:left;}
    .VipDj ul{ padding:0px 0px 10px 30px;}
    .VipDj ul li{ width:100%;display:block;margin-top:10px }
    .VipZf{ float:left; height:94px;}
    .VipZf1{ padding-left:30px; padding-top:10px; color:#333333; }
    #xz{ color:#999;}

    .JinBiCz1{ float:left; height:94px; }
    .JinBiCz2{ float:left; padding-top:30px; padding-left:30px; font-size:16px; }
    .Input1{ height:30px; line-height:30px; border:1px solid #CCC; width:80px; color:#666;}

    .BankList{ height:44px; background-color:#FFF; }
    ul,li,p{ list-style:none; margin:0px; padding:0px;}
    .BankList ul{ height:44px; border:1px solid #fac6dc; border-right:0px; }
    .BankList ul li{ padding-top:4px; cursor:pointer;  float:left; height:40px; border-right:1px solid #fac6dc; width:121px; text-align:center;  }
    .BankList ul li span{ font-size:8px; font-family:Arial;}
    .BankList ul li.Li1{ background-color:#ff0066; color:#FFFFFF;  }

    .BankList1{ text-align:center; padding-bottom:20px; }

    .BankList1 ul{ padding:30px; padding-top:40px; height:250px; }
    .BankList1 ul li{ margin-left:30px; _margin-left:15px; margin-bottom:30px; _margin-bottom:15px; cursor:pointer;  float:left; height:38px; border:1px solid #CCC; width:118px; text-align:center; line-height:44px; color:#8f8f8f;  }
    .BankList1 ul li.Li1{ margin-left:30px; _margin-left:15px; margin-bottom:30px; _margin-bottom:15px; cursor:pointer;  float:left; height:38px; border:1px solid #ff0066; width:118px; text-align:center; line-height:44px; color:#ff0066;  }

    .Rqzf{ clear:both; text-align:center; width:880px; margin:0 auto;  border-top:1px dashed #CCC; height:100px; padding-top:20px; }
    .zfyh{ color:#ff0068; }
    .zfBtn{ background:url(/images/Pay_55.gif) no-repeat; width:104px; height:42px; line-height:42px; color:#FFF; border:0px; margin-top:10px; _margin-top:5px;}
    .Yfje{ color:#ff0066; font-size:20px; padding:0px 5px;}


    <!--
    .STYLE2 {font-size: 12px}
    .STYLE3 {color: #FF3300;font-size: 12px}
    #form1 table {
        border-top: thin dashed #CCCCCC;
        margin: 0px auto 15px;
        border-bottom: thin dashed #CCCCCC;
        height: 100px;
    }
    #form1 table td{ padding:10px;}
    -->
    .submitpay {
        padding: 5px 10px;
        height: 30px;
        border: none;
        background: #e40f74;
        color: #FFF;
        line-height: 20px;
        letter-spacing: 1px;
        cursor: pointer;
    }
    #payform tr td {
        padding:10px;
    }
    .hide {display:none;}
</style>
<div class="Main">
    <div class="PaySlide"><img src="/images/Pay_03.jpg" /></div>

    <div class="Main1">
		<form action="https://pay.paysapi.com/" method="post">
			<input type="hidden" name="uid" value="<%=payuid%>" />
			<input type="hidden" name="notify_url" value="<%=notify_url%>" />
			<input type="hidden" name="return_url" value="<%=return_url%>" />
			<input type="hidden" name="orderid" value="<%=orderid%>" />
			<input type="hidden" name="orderuid" value="<%=orderuid%>" />
			<input type="hidden" name="key" value="<%=key%>" />
        <div class="JinBiCz">
            <div class="JinBiCz1"><img src="/images/Pay_006.gif" /></div>
            <div class="VipDj">
                <ul>
                    <li><label><input type="radio" id="type1" name="price" value="100.00" /></label>
                        <label for="type1"><b>VIP会员（一月）<font color="red">100元，</font></b></label>
						<span style='font-size:14px; color:#FF0000;line-height=36px'><b>1月黄金会员</b></span><b>（体验选择！一个月黄金会员！）</b>
                    </li>
                    <li><label><input type="radio" id="type2" name="price" value="300.00" /></label>
                        <label for="type2"><b>VIP会员（一年）<font color="red">300元，</font></b></label>
						<span style='font-size:14px; color:#FF0000;line-height=36px'><b>1年钻石会员</b></span><b>（经典选择！一年钻石会员，超值性价比！）</b>
                    </li>
                    <li><label><input type="radio" id="type3" name="price" value="500.00" checked="checked" /></label>
                        <label for="type3"><b>VIP会员（永久）<font color="red">500元，</font></b></label>
						<span style='font-size:14px; color:#FF0000;line-height=36px'><b>大富豪永久会员</b></span><b>（尊享选择！大富豪永久会员！不再孤单！）</b>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            </div>
        </div>
        <div style="clear:both;"></div>
        <div class="BankList1" id="BankList1">

        </div>

        <TABLE id="payform" cellSpacing=1 cellPadding=5 width="100%" bgColor=#cccccc border=0>
            <TBODY>
                <TR bgColor=#ffffff>
                    <TD align=right colSpan=2>
                        <DIV align=left>
                            <P><img src ="/images/vip/vip.gif" border=0> <b>VIP会员</b>&nbsp;&nbsp;<font color="#ff0000">升级VIP会员</p></DIV>
                    </TD>
                </TR>
                <TR bgColor=#ffffff>
                    <TD align=right width="21%">
                        <div class="tdtitle">支付方式:</div>
                    </TD>
                    <TD>
                        <P>
                            <input type="radio" name="istype" value="1" id="alipay"> <label for="alipay">支付宝</label>
                            <input type="radio" name="istype" checked="checked" value="2" id="wechat"> <label for="wechat">微信</label>
                        </P>
                    </TD>
                </TR>
                <TR bgColor=#ffffff>
                    <TD align=right>
                        <div class="tdtitle">收费项目:</div></TD>
                    <TD>
                        <P>
                            升级会员
                        </P>
                    </TD>
                </TR>
                <TR bgColor=#ffffff>
                    <TD align=right>
                        <div class="tdtitle">会员名称:</div>
                    </TD>
                    <TD>
                        <P><B><%=session("username")%></B>								 
                        </P>
                    </TD>
                </TR>

                <TR bgColor=#ffffff>
                    <TD align=left></td>
                    <TD align=left>
                        <input type="submit" value="立即支付" class="submitpay">
                    </TD>
                </TR>
            </tbody>
        </table>
		</form>
    </div>
</div>
<div class="Clear"></div>
<script type="text/javascript">
$(function(){
	$(document).on("click", "input[name='price'],input[name='istype']", function(){
		var sub = $("input[type=submit]");
		sub.prop("disabled", true);
		$.ajax({
			url:"/paysapi/ajax.asp",
			data:{price:$("input[name='price']:checked").val(),istype:$("input[name='istype']:checked").val(),orderid:$("input[name='orderid']").val()},
			success:function(key){
				sub.prop("disabled", false);
				$("input[name='key']").val(key);
			}
		});
	});
});
</script>
<!--#include file="../foot.asp"-->
</body>
</html>
