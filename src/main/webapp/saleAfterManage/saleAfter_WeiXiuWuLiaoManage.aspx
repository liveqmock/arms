

<html>
<head><title>

</title>

    <style type="text/css" >
      td
      {
        height:25px;
        white-space:nowrap;
        }
    </style>

 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>


<script language="javascript" type="text/javascript" >

    var tmp = '#FFFFFF';
    $(function () {
        $('#tbList tr').mouseover(function () {
            tmp = this.style.backgroundColor;
            this.style.backgroundColor = '#eaf2ff';
        });

        $('#tbList tr').mouseout(function () {
            this.style.backgroundColor = tmp;
        });
    });


    function showWeiXiuBill(saleAfterWeiXiuGuid) {
        var u = "../saleAfterManage/saleAfterWeiXiuLiShiDetailShowBySaleAfterGuid.aspx?tabId=2&saleAfterGuid=" + saleAfterWeiXiuGuid + "&d=" + new Date();
        z = window.open(u, "saleAFterBill", "width=790,height=600,scrollbars=yes");
        z.focus();
        return false;
    }


</script>



<body>
    <form name="form1" method="post" action="saleAfter_WeiXiuWuLiaoManage.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTk1OTU1NTA5OA9kFgICAw9kFgQCBQ8QDxYGHg1EYXRhVGV4dEZpZWxkBQh1c2VyTmFtZR4ORGF0YVZhbHVlRmllbGQFCHVzZXJOYW1lHgtfIURhdGFCb3VuZGdkEBUbCeWnnOa1t+eHlQbmooXmlY8J5byg5bCP5bmzCeWImOmdmemdmQbpl7XlqpsG5ZGo6I65Ceeoi+e7jeS8nwnlu5bkvZHpm4QG55SY55CbCeadjuWNl+eHrgzku7vlrrbplb/nlJ8J5b6Q5bu66IOcCeadqOS9s+WKmwbpvprmmZMG6buE5pilBuabvumbrwnlhq/mmajnqIsG6buE546JCeWtlOelpee+pAnnvZfmnaXlrrYG5ZC05amnBuWPtuaDhQnmlrnnkpDlvawG6IOh6LaFCeWRqOaipuautwblkajolLcG5YWo6YOoFRsJ5aec5rW354eVBuaiheaVjwnlvKDlsI/lubMJ5YiY6Z2Z6Z2ZBumXteWqmwblkajojrkJ56iL57uN5LyfCeW7luS9kembhAbnlJjnkJsJ5p2O5Y2X54euDOS7u+WutumVv+eUnwnlvpDlu7rog5wJ5p2o5L2z5YqbBum+muaZkwbpu4TmmKUG5pu+6ZuvCeWGr+aZqOeoiwbpu4TnjokJ5a2U56Wl576kCee9l+adpeWutgblkLTlqacG5Y+25oOFCeaWueeSkOW9rAbog6HotoUJ5ZGo5qKm5q63BuWRqOiUtwAUKwMbZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZGQCFQ8WBB4LXyFJdGVtQ291bnQCGB4HVmlzaWJsZWcWMAIBD2QWAmYPFREkYmQxNTg0OTItNjUyYy00OGZkLWIzMjktZWZmYmYyZjZlNDMyATEkYmQxNTg0OTItNjUyYy00OGZkLWIzMjktZWZmYmYyZjZlNDMyDldYRDIwMTUwMTA4MDA4BDI4OTAJ6YSCSjUzOTk4EUxGTUpXMzZGNkIwMTMyMzM5BuWRqOiUtwnphKLliKnlhpsLMTM4NzIwMjY4ODgEUkFWNA1BQ0EzM0wtQU5QR0tDBuWumuS/nQnnu7Tkv67kuK0RMjAxNS0xLTggMTE6NTI6NDYRMjAxNS0xLTkgMTE6NTI6NDYRMjAxNS0xLTggMTE6NTc6NDJkAgIPZBYCZg8VESRiN2Y2NzMzOC1iMjRjLTRjMTAtYjVmZi0xM2I1Y2QzM2QzOTgBMiRiN2Y2NzMzOC1iMjRjLTRjMTAtYjVmZi0xM2I1Y2QzM2QzOTgOV1hEMjAxNTAxMDgwMDcEMjg5MQnotaNHUzE1NTgRTEZNSjQ0QUY2RTMwMzc4NjYG5ZGo6JS3CeelneaWh+WFtQsxMzU5MzY5NTk4OARSQVY0DVpTQTQ0TC1BTlhHS0MDMTBLD+i0ouWKoeaUtuasvuS4rREyMDE1LTEtOCAxMDoxMzowMxEyMDE1LTEtOSAxMDoxMzowMxEyMDE1LTEtOCAxMDoxODoyMGQCAw9kFgJmDxURJDMxMWY3YjgxLTg5ZjQtNDI3NS05YWRlLTBhMWU5NzdhZDhlMgEzJDMxMWY3YjgxLTg5ZjQtNDI3NS05YWRlLTBhMWU5NzdhZDhlMg5XWEQyMDE1MDEwODAwNgQyODkyCei1o0dEOTkzORFMRk1BOEUyQTBFMDAyOTUzNQnmnY7ljZfnh64G6Jme5YCpCzE4MjcwMjk5NTkxBuWogempsA5OU1AxNTFMLUJFUFJLQwblrprkv50J5o6l5b6F5LitETIwMTUtMS04IDEwOjAxOjI3ETIwMTUtMS04IDExOjMwOjI3ETIwMTUtMS04IDEwOjA2OjU0ZAIED2QWAmYPFREkMzMwNjY0MDMtZTIzZS00ODM2LTgzNjUtMmQwOGNmOGEwN2ZhATQkMzMwNjY0MDMtZTIzZS00ODM2LTgzNjUtMmQwOGNmOGEwN2ZhDldYRDIwMTUwMTA4MDA1BzAwMDI4MzUJ6LWjR1oyMzczEUxGTUpXMzZGWEMwMTY0MjMwCeaWueeSkOW9rAnokaPngo7ls7ALMTgxNDY2MDM3NzcEUkFWNA1BQ0EzM0wtQU5QR0tDBuS/nemZqQnmjqXlvoXkuK0QMjAxNS0xLTggOTo1Njo1MhAyMDE1LTEtOSA5OjU2OjUyETIwMTUtMS04IDEwOjAxOjU0ZAIFD2QWAmYPFREkY2Y0YjhmMzktN2U1Mi00ZDlmLTljN2MtY2I0OWE1YTI5MmYzATUkY2Y0YjhmMzktN2U1Mi00ZDlmLTljN2MtY2I0OWE1YTI5MmYzDldYRDIwMTUwMTA4MDA0BDI4OTMJ6LWjR1c5NTE2EUxGTUFQMjJDN0MwMzk4Mzg5BuWRqOiUtwnp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" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


    <div style="margin-left:10px;margin-top:10px;" >
       
     <div >
     <table border="0" style="width:100%;border-bottom:1px solid #b8b8b8;"">
        <tr><td class="titlebg"><span>配件管理</span>(维修工单列表)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 

       <div>
       <!--查询条件 start-->
       <table border="0" cellpadding="0" cellspacing="0"  style="width:800px;">
        <tr><td colspan="6" style="height:1px;"></td></tr>
         <tr>
         <td>工单号:</td>
         <td><input name="txtBillNo" type="text" maxlength="30" id="txtBillNo" style="width:135px;" /></td>
         <td>协议单号:</td>
         <td><input name="txtXieYiBillNo" type="text" maxlength="30" id="txtXieYiBillNo" style="width:135px;" /></td>
         <td>服务顾问:</td>
         <td>
         <select name="ddlFuWuGuWen" id="ddlFuWuGuWen" style="width:130px;">
    <option value="姜海燕">姜海燕</option>
    <option value="梅敏">梅敏</option>
    <option value="张小平">张小平</option>
    <option value="刘静静">刘静静</option>
    <option value="闵媛">闵媛</option>
    <option value="周莹">周莹</option>
    <option value="程绍伟">程绍伟</option>
    <option value="廖佑雄">廖佑雄</option>
    <option value="甘琛">甘琛</option>
    <option value="李南燮">李南燮</option>
    <option value="任家长生">任家长生</option>
    <option value="徐建胜">徐建胜</option>
    <option value="杨佳力">杨佳力</option>
    <option value="龚晓">龚晓</option>
    <option value="黄春">黄春</option>
    <option value="曾雯">曾雯</option>
    <option value="冯晨程">冯晨程</option>
    <option value="黄玉">黄玉</option>
    <option value="孔祥群">孔祥群</option>
    <option value="罗来家">罗来家</option>
    <option value="吴婧">吴婧</option>
    <option value="叶情">叶情</option>
    <option value="方璐彬">方璐彬</option>
    <option value="胡超">胡超</option>
    <option value="周梦殷">周梦殷</option>
    <option value="周蔷">周蔷</option>
    <option selected="selected" value="">全部</option>

</select>
         </td>
         </tr>
           <tr>
         <td>车牌号:</td>
         <td><input name="txtChePaiHao" type="text" maxlength="30" id="txtChePaiHao" style="width:135px;" /></td>
         <td>客户名称:</td>
         <td><input name="txtKeHuName" type="text" maxlength="30" id="txtKeHuName" style="width:135px;" /></td>
         <td>联系手机:</td>
         <td><input name="txtLianXiMob" type="text" maxlength="30" id="txtLianXiMob" style="width:135px;" /></td>
         </tr>
           <tr>
         <td>入厂时间:</td>
         <td><input name="txtRuChangDateStart" type="text" value="2015-01-06" maxlength="30" id="txtRuChangDateStart" class="inputCss easyui-datebox" style="width:135px;" /></td>
         <td>至:</td>
         <td><input name="txtRuChangDateEnd" type="text" maxlength="30" id="txtRuChangDateEnd" class="inputCss easyui-datebox" style="width:135px;" /></td>
         <td>
         <table id="radList" onClick="javascript:__doPostBack('lnkSearch','')" border="0">
    <tr>
        <td><input id="radList_0" type="radio" name="radList" value="出库" checked="checked" /><label for="radList_0">出库</label></td><td><input id="radList_1" type="radio" name="radList" value="退库" /><label for="radList_1">退库</label></td>
    </tr>
</table>
         </td>
         <td><a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a></td>
         </tr>
                
       </table>
       <!--查询条件 end-->
       </div>

       <div>       
       <!--列表数据 start-->
       <table border="1" id="tbList" style="border-collapse:collapse;border:1px solid gray;width:100%"  >
         
         <!--维修出库 start-->

         
          <tr>
          <td>NO.</td>
          <td>工单号</td>
          <td>协议单号</td>
          <td>车牌号</td>
          <td>车架号</td>
          <td>服务顾问</td>
          <td>联系人</td>
          <td>手机</td>
          <td>车型</td>
          <td>维修类型</td>
          <td>单据状态</td>
          <td>入厂时间</td>
          <td>预出厂时间</td>
          <td>录入时间</td>
          </tr>
          
          <tr ondblclick=showDetail('bd158492-652c-48fd-b329-effbf2f6e432') >
          <td  style="width:30px;text-align:center;">1</td>
          <td><a href='#' onclick=showWeiXiuBill('bd158492-652c-48fd-b329-effbf2f6e432') >WXD20150108008</a></td>
          <td>2890</td>
          <td>鄂J53998</td>
          <td>LFMJW36F6B0132339</td>
          <td>周蔷</td>
          <td>鄢利军</td>
          <td>13872026888</td>
          <td>RAV4ACA33L-ANPGKC</td>
          <td>定保</td>
          <td>维修中</td>
          <td>2015-1-8 11:52:46</td>
          <td>2015-1-9 11:52:46</td>
          <td>2015-1-8 11:57:42</td>
          </tr>
          
          <tr ondblclick=showDetail('b7f67338-b24c-4c10-b5ff-13b5cd33d398') >
          <td  style="width:30px;text-align:center;">2</td>
          <td><a href='#' onclick=showWeiXiuBill('b7f67338-b24c-4c10-b5ff-13b5cd33d398') >WXD20150108007</a></td>
          <td>2891</td>
          <td>赣GS1558</td>
          <td>LFMJ44AF6E3037866</td>
          <td>周蔷</td>
          <td>祝文兵</td>
          <td>13593695988</td>
          <td>RAV4ZSA44L-ANXGKC</td>
          <td>10K</td>
          <td>财务收款中</td>
          <td>2015-1-8 10:13:03</td>
          <td>2015-1-9 10:13:03</td>
          <td>2015-1-8 10:18:20</td>
          </tr>
          
          <tr ondblclick=showDetail('311f7b81-89f4-4275-9ade-0a1e977ad8e2') >
          <td  style="width:30px;text-align:center;">3</td>
          <td><a href='#' onclick=showWeiXiuBill('311f7b81-89f4-4275-9ade-0a1e977ad8e2') >WXD20150108006</a></td>
          <td>2892</td>
          <td>赣GD9939</td>
          <td>LFMA8E2A0E0029535</td>
          <td>李南燮</td>
          <td>虞倩</td>
          <td>18270299591</td>
          <td>威驰NSP151L-BEPRKC</td>
          <td>定保</td>
          <td>接待中</td>
          <td>2015-1-8 10:01:27</td>
          <td>2015-1-8 11:30:27</td>
          <td>2015-1-8 10:06:54</td>
          </tr>
          
          <tr ondblclick=showDetail('33066403-e23e-4836-8365-2d08cf8a07fa') >
          <td  style="width:30px;text-align:center;">4</td>
          <td><a href='#' onclick=showWeiXiuBill('33066403-e23e-4836-8365-2d08cf8a07fa') >WXD20150108005</a></td>
          <td>0002835</td>
          <td>赣GZ2373</td>
          <td>LFMJW36FXC0164230</td>
          <td>方璐彬</td>
          <td>董炎峰</td>
          <td>18146603777</td>
          <td>RAV4ACA33L-ANPGKC</td>
          <td>保险</td>
          <td>接待中</td>
          <td>2015-1-8 9:56:52</td>
          <td>2015-1-9 9:56:52</td>
          <td>2015-1-8 10:01:54</td>
          </tr>
          
          <tr ondblclick=showDetail('cf4b8f39-7e52-4d9f-9c7c-cb49a5a292f3') >
          <td  style="width:30px;text-align:center;">5</td>
          <td><a href='#' onclick=showWeiXiuBill('cf4b8f39-7e52-4d9f-9c7c-cb49a5a292f3') >WXD20150108004</a></td>
          <td>2893</td>
          <td>赣GW9516</td>
          <td>LFMAP22C7C0398389</td>
          <td>周蔷</td>
          <td>黄志明</td>
          <td>15907928792</td>
          <td>花冠ZRE120L-GEPDKC</td>
          <td>一般维修</td>
          <td>财务收款中</td>
          <td>2015-1-8 9:45:27</td>
          <td>2015-1-9 9:45:27</td>
          <td>2015-1-8 9:50:27</td>
          </tr>
          
          <tr ondblclick=showDetail('85784d56-1c92-4c92-8c5f-7b7e462075f4') >
          <td  style="width:30px;text-align:center;">6</td>
          <td><a href='#' onclick=showWeiXiuBill('85784d56-1c92-4c92-8c5f-7b7e462075f4') >WXD20150108003</a></td>
          <td>0301</td>
          <td>赣G33006</td>
          <td>LFMAP22C7E0642738</td>
          <td>周蔷</td>
          <td>何小年</td>
          <td>15979956260</td>
          <td>花冠ZRE120L-GEPDKC</td>
          <td>定保</td>
          <td>财务收款中</td>
          <td>2015-1-8 9:36:10</td>
          <td>2015-1-9 9:36:10</td>
          <td>2015-1-8 9:41:58</td>
          </tr>
          
          <tr ondblclick=showDetail('38cabde0-7a88-44cb-bed3-b92f5cd88f77') >
          <td  style="width:30px;text-align:center;">7</td>
          <td><a href='#' onclick=showWeiXiuBill('38cabde0-7a88-44cb-bed3-b92f5cd88f77') >WXD20150108002</a></td>
          <td>2894</td>
          <td>赣G3Z300</td>
          <td>LFMAPE2C1C3552921</td>
          <td>李南燮</td>
          <td>周星</td>
          <td>15079219000</td>
          <td>卡罗拉ZRE151L-GEPNKC</td>
          <td>定保</td>
          <td>财务收款中</td>
          <td>2015-1-8 9:15:56</td>
          <td>2015-1-8 10:35:56</td>
          <td>2015-1-8 9:20:59</td>
          </tr>
          
          <tr ondblclick=showDetail('7e6bfacf-ea8f-4b62-b4ba-72e9fd44d02a') >
          <td  style="width:30px;text-align:center;">8</td>
          <td><a href='#' onclick=showWeiXiuBill('7e6bfacf-ea8f-4b62-b4ba-72e9fd44d02a') >WXD20150108001</a></td>
          <td>2895</td>
          <td>赣GD8582</td>
          <td>LFMBEC4DXB0070176</td>
          <td>周蔷</td>
          <td>胡君</td>
          <td>13907924440</td>
          <td>锐志GRX132L-AETZKC</td>
          <td>一般维修</td>
          <td>财务收款中</td>
          <td>2015-1-8 8:56:20</td>
          <td>2015-1-9 8:56:20</td>
          <td>2015-1-8 9:01:11</td>
          </tr>
          
          <tr ondblclick=showDetail('f6579213-102d-4cee-a707-9449e4a2ee8c') >
          <td  style="width:30px;text-align:center;">9</td>
          <td><a href='#' onclick=showWeiXiuBill('f6579213-102d-4cee-a707-9449e4a2ee8c') >WXD20150107026</a></td>
          <td>2834</td>
          <td>赣G33481</td>
          <td>LFMBE85B660014106</td>
          <td>胡超</td>
          <td>冷绪义</td>
          <td>13907022635</td>
          <td>皇冠GRS188L-DETBKC</td>
          <td>保险</td>
          <td>接待中</td>
          <td>2015-1-7 17:10:13</td>
          <td>2015-1-8 17:10:13</td>
          <td>2015-1-7 17:15:15</td>
          </tr>
          
          <tr ondblclick=showDetail('1f80ad36-e314-4f98-9bf2-071820dce7d3') >
          <td  style="width:30px;text-align:center;">10</td>
          <td><a href='#' onclick=showWeiXiuBill('1f80ad36-e314-4f98-9bf2-071820dce7d3') >WXD20150107024</a></td>
          <td>2886</td>
          <td>赣K50323</td>
          <td>JTEBX3FJ1EK191070</td>
          <td>李南燮</td>
          <td>刘春生</td>
          <td>15979888883</td>
          <td>霸道TRJ150L-GKPEKV</td>
          <td>5K</td>
          <td>财务收款中</td>
          <td>2015-1-7 16:07:39</td>
          <td>2015-1-7 17:30:39</td>
          <td>2015-1-7 16:12:39</td>
          </tr>
          
          <tr ondblclick=showDetail('5094c1b9-8339-486b-98c7-0b95304f5491') >
          <td  style="width:30px;text-align:center;">11</td>
          <td><a href='#' onclick=showWeiXiuBill('5094c1b9-8339-486b-98c7-0b95304f5491') >WXD20150107021</a></td>
          <td>22881</td>
          <td>赣G12345</td>
          <td>1234567890[SAG]</td>
          <td>甘琛</td>
          <td>张生</td>
          <td>8502222</td>
          <td>威驰其它</td>
          <td>一般维修</td>
          <td>维修中</td>
          <td>2015-1-7 15:03:48</td>
          <td>2015-1-8 15:03:48</td>
          <td>2015-1-7 15:08:45</td>
          </tr>
          
          <tr ondblclick=showDetail('56cb4f6e-b0b3-4060-a829-65464d2f5b18') >
          <td  style="width:30px;text-align:center;">12</td>
          <td><a href='#' onclick=showWeiXiuBill('56cb4f6e-b0b3-4060-a829-65464d2f5b18') >WXD20150107019</a></td>
          <td>084</td>
          <td>赣G12345</td>
          <td>LFM2C22T5801C2006</td>
          <td>任家长生</td>
          <td>售后部</td>
          <td>13500000000</td>
          <td>卡罗拉597471</td>
          <td>一般维修</td>
          <td>财务收款中</td>
          <td>2015-1-7 14:14:04</td>
          <td>2015-1-8 15:14:04</td>
          <td>2015-1-7 14:19:01</td>
          </tr>
          
          <tr ondblclick=showDetail('32d63e96-60a8-4891-b512-fd9827caae97') >
          <td  style="width:30px;text-align:center;">13</td>
          <td><a href='#' onclick=showWeiXiuBill('32d63e96-60a8-4891-b512-fd9827caae97') >WXD20150107017</a></td>
          <td>005</td>
          <td>赣GV9036</td>
          <td>LFMAPE2C1C0394047</td>
          <td>甘琛</td>
          <td>余月平</td>
          <td>18979237939</td>
          <td>卡罗拉ZRE151L-GEPNKC</td>
          <td>一般维修</td>
          <td>财务收款中</td>
          <td>2015-1-7 13:15:53</td>
          <td>2015-1-8 14:15:53</td>
          <td>2015-1-7 13:20:47</td>
          </tr>
          
          <tr ondblclick=showDetail('0c320301-e90d-4896-a180-a95c7152d92f') >
          <td  style="width:30px;text-align:center;">14</td>
          <td><a href='#' onclick=showWeiXiuBill('0c320301-e90d-4896-a180-a95c7152d92f') >WXD20150107013</a></td>
          <td>2920</td>
          <td>川AA072U</td>
          <td>LFMGJ272X9S224681</td>
          <td>李南燮</td>
          <td>蒲保国</td>
          <td>18781975008</td>
          <td>霸道GRJ120L-GKAGKC</td>
          <td>一般维修</td>
          <td>维修中</td>
          <td>2015-1-7 12:20:08</td>
          <td>2015-1-7 13:30:08</td>
          <td>2015-1-7 12:25:04</td>
          </tr>
          
          <tr ondblclick=showDetail('ce5973fc-6398-48a7-b62d-f4ce0f30b9d5') >
          <td  style="width:30px;text-align:center;">15</td>
          <td><a href='#' onclick=showWeiXiuBill('ce5973fc-6398-48a7-b62d-f4ce0f30b9d5') >WXD20150107011</a></td>
          <td>00541</td>
          <td>赣GS3687</td>
          <td>LFMKV36F4D0196390</td>
          <td>李南燮</td>
          <td>何文欢</td>
          <td>13907026905</td>
          <td>RAV4ACA37L-ANPXKC</td>
          <td>一般维修</td>
          <td>维修中</td>
          <td>2015-1-7 11:32:29</td>
          <td>2015-1-9 16:32:29</td>
          <td>2015-1-7 11:37:35</td>
          </tr>
          
          <tr ondblclick=showDetail('a21eb3dd-ed39-429e-9c56-504697d18789') >
          <td  style="width:30px;text-align:center;">16</td>
          <td><a href='#' onclick=showWeiXiuBill('a21eb3dd-ed39-429e-9c56-504697d18789') >WXD20150107010</a></td>
          <td>22918</td>
          <td>鄂J5U125</td>
          <td>LFMAP86C8E0024776</td>
          <td>甘琛</td>
          <td>徐飞</td>
          <td>15559108067</td>
          <td>卡罗拉ZRE181L-GEMEKC</td>
          <td>5K</td>
          <td>维修中</td>
          <td>2015-1-7 11:31:05</td>
          <td>2015-1-8 11:31:05</td>
          <td>2015-1-7 11:37:26</td>
          </tr>
          
          <tr ondblclick=showDetail('fd17c996-781d-42ff-89a8-bb827da951bf') >
          <td  style="width:30px;text-align:center;">17</td>
          <td><a href='#' onclick=showWeiXiuBill('fd17c996-781d-42ff-89a8-bb827da951bf') >WXD20150107008</a></td>
          <td>003</td>
          <td>赣G68363</td>
          <td>LFMARE2C3B0334764</td>
          <td>甘琛</td>
          <td>虞北旗</td>
          <td>13576249198</td>
          <td>卡罗拉ZRE152L-GEXEKC</td>
          <td>定保</td>
          <td>财务收款中</td>
          <td>2015-1-7 10:14:47</td>
          <td>2015-1-8 12:30:47</td>
          <td>2015-1-7 10:20:07</td>
          </tr>
          
          <tr ondblclick=showDetail('ae24c960-0cb5-466e-ab77-d925ea13adb0') >
          <td  style="width:30px;text-align:center;">18</td>
          <td><a href='#' onclick=showWeiXiuBill('ae24c960-0cb5-466e-ab77-d925ea13adb0') >WXD20150107004</a></td>
          <td>0002832</td>
          <td>赣GE3300</td>
          <td>LFMAP22C4D0587390</td>
          <td>方璐彬</td>
          <td>程绍伟</td>
          <td>18720245464</td>
          <td>花冠ZRE120L-GEPDKC</td>
          <td>保险</td>
          <td>维修中</td>
          <td>2015-1-7 9:43:08</td>
          <td>2015-1-8 9:43:08</td>
          <td>2015-1-7 9:48:38</td>
          </tr>
          
          <tr ondblclick=showDetail('c27e169a-8ecf-478a-80ba-6bb2702eb296') >
          <td  style="width:30px;text-align:center;">19</td>
          <td><a href='#' onclick=showWeiXiuBill('c27e169a-8ecf-478a-80ba-6bb2702eb296') >WXD20150107002</a></td>
          <td>22914</td>
          <td>赣G9Z022</td>
          <td>LFMJ440F3E3035557</td>
          <td>甘琛</td>
          <td>曾广会</td>
          <td>18770225790</td>
          <td>RAV4ZSA44L-ANXMKC</td>
          <td>5K</td>
          <td>财务收款中</td>
          <td>2015-1-7 9:22:25</td>
          <td>2015-1-8 9:22:25</td>
          <td>2015-1-7 9:27:41</td>
          </tr>
          
          <tr ondblclick=showDetail('fa1657d1-073a-499f-a56f-5b05dcc1ca12') >
          <td  style="width:30px;text-align:center;">20</td>
          <td><a href='#' onclick=showWeiXiuBill('fa1657d1-073a-499f-a56f-5b05dcc1ca12') >WXD20150106020</a></td>
          <td>2908</td>
          <td>京PHV875</td>
          <td>LFMGJ272X9S220162</td>
          <td>周蔷</td>
          <td>张纪</td>
          <td>18911721303</td>
          <td>霸道GRJ120L-GKAEKC</td>
          <td>一般维修</td>
          <td>财务收款中</td>
          <td>2015-1-6 16:26:20</td>
          <td>2015-1-7 16:26:20</td>
          <td>2015-1-6 16:31:14</td>
          </tr>
          
          <tr ondblclick=showDetail('8166ebd1-ca92-4e7a-872c-b12dccf43d2e') >
          <td  style="width:30px;text-align:center;">21</td>
          <td><a href='#' onclick=showWeiXiuBill('8166ebd1-ca92-4e7a-872c-b12dccf43d2e') >WXD20150106015</a></td>
          <td>2935</td>
          <td>赣GG0135</td>
          <td>LFMA7E2A5E0019912</td>
          <td>周蔷</td>
          <td>郭华先</td>
          <td>18720187173</td>
          <td>威驰NSP150L-BEPRKC</td>
          <td>厂家保修</td>
          <td>维修中</td>
          <td>2015-1-6 13:56:24</td>
          <td>2015-1-7 13:56:24</td>
          <td>2015-1-6 14:01:13</td>
          </tr>
          
          <tr ondblclick=showDetail('18c83ba8-9217-45f9-bef2-88664ed964d0') >
          <td  style="width:30px;text-align:center;">22</td>
          <td><a href='#' onclick=showWeiXiuBill('18c83ba8-9217-45f9-bef2-88664ed964d0') >WXD20150106012</a></td>
          <td>01245</td>
          <td>赣G13C13</td>
          <td>LFMBE20D370099168</td>
          <td>胡超</td>
          <td>王飞哲</td>
          <td>13870213193</td>
          <td>锐志GRX122L-AETZKC</td>
          <td>保险</td>
          <td>接待中</td>
          <td>2015-1-6 13:02:28</td>
          <td>2015-1-7 13:02:28</td>
          <td>2015-1-6 13:08:23</td>
          </tr>
          
          <tr ondblclick=showDetail('30431c44-8bfb-43e1-9ff2-55f404dd8fd4') >
          <td  style="width:30px;text-align:center;">23</td>
          <td><a href='#' onclick=showWeiXiuBill('30431c44-8bfb-43e1-9ff2-55f404dd8fd4') >WXD20150106010</a></td>
          <td>2933</td>
          <td>赣G17717</td>
          <td>LTVBA423630028605</td>
          <td>周蔷</td>
          <td>计浔</td>
          <td>13257929001</td>
          <td>威驰GLX-IECT</td>
          <td>厂家保修</td>
          <td>维修中</td>
          <td>2015-1-6 12:34:21</td>
          <td>2015-1-7 12:34:21</td>
          <td>2015-1-6 12:39:12</td>
          </tr>
          
          <tr ondblclick=showDetail('d490914f-ea5c-410c-b01f-15aa89c256b1') >
          <td  style="width:30px;text-align:center;">24</td>
          <td><a href='#' onclick=showWeiXiuBill('d490914f-ea5c-410c-b01f-15aa89c256b1') >WXD20150106004</a></td>
          <td>0099</td>
          <td>赣G12345</td>
          <td>LFM2C22T5801C2006</td>
          <td>任家长生</td>
          <td>售后部</td>
          <td>13500000000</td>
          <td>卡罗拉597471</td>
          <td>一般维修</td>
          <td>维修中</td>
          <td>2015-1-6 10:41:04</td>
          <td>2015-1-11 14:41:04</td>
          <td>2015-1-6 10:46:09</td>
          </tr>
          

         <!--维修出库 end-->


         <!--维修退库 start-->

         

         <!--维修退库 end-->


       </table>

       <!--列表数据 end-->
       </div>

    </div>
    
<div>

    <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="0EF0EA4F" />
    <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWJwKR78CVBgLa9PCNDgLp+cu2CAK6k+b8DALUi6TSCgLkl9+sCQK6ivXDCQKE8fegBAKH8oxoAovxwYIPAs/wkaMMAvew9NQJAvn4uKQOAtvEu4wPAvGslJcDArT3idAFAvnt1/oKApPvn8cKAp2fpMEHAqvYl8UDApPvz+gJAu2zvs8FAurQ8OIOAsPyhKUEAoXlnPYKAvrj5fcEAvDbn5gBAtDpt4AJAofyxF8Cz7WLmgQCpMa9BgKmvN/3DAKp7fiBDALR9OH0CQLCwbR4AtWsm7MPAqOvmLMPAoPgxKkPAqmLicEFFvXedTQQlGpxJyabqfkQvGJxFiA=" />
</div></form>

    <script language="javascript" type="text/javascript" >

        $(function () {
            var $inp = $('input'); //所有的input元素
            $inp.keypress(function (e) { //这里给function一个事件参数命名为e，叫event也行，随意的，e就是IE窗口发生的事件。
                var key = e.which; //e.which是按键的值
                if (key == 13) {
                    __doPostBack('lnkSearch', '');
                }
            });

        });



        function showDetail(detailGuid) {

            var a = $("#radList_0").attr("checked");
            var b = $("#radList_1").attr("checked");

            if (a == "checked") {
                //维修出库
                //parent.winopen('../storeOtherManage/storeOtherWeiXiuOutBill.aspx?saleAfterGuid=' +detailGuid+ "&d=" + new Date(), '维修出库', 990, 600, true, true, false);
                z= window.open('../storeOtherManage/storeOtherWeiXiuOutBill.aspx?saleAfterGuid=' + detailGuid + '&d=' + new Date(), '维修出库', 'height=600,width=990,top=50,left=150,toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no')
                z.focus();
            } else {
                //维修退库
                parent.winopen('../storeOtherManage/storeOtherWeiXiuBackBill.aspx?saleAfterGuid=' + detailGuid + "&d=" + new Date(), '维修退库', 990, 600, true, true, false);
                 
            }


        }



        function showBackDetail(saleAfterGuid,chuKuGuid) {
         z = window.open('../storeOtherManage/storeOtherWeiXiuBackBill.aspx?saleAfterGuid=' + saleAfterGuid + '&chuKuGuid=' + chuKuGuid +'&d=' + new Date(), '维修退库', 'height=600,width=990,top=50,left=150,toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');
         z.focus();
       }
    
    </script>

</body>
</html>