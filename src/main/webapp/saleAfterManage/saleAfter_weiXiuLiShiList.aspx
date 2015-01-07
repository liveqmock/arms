<html>
 <head><title>
    维修历史查看
</title>
    <style type="text/css">
    td
    {
        white-space:nowrap;
        }
    </style>
  <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>


 <script language="javascript" type="text/javascript" >

     var tmp = '#FFFFFF';
     $(function () {
         $('#tbWeiXiuList tr').mouseover(function () {
             tmp = this.style.backgroundColor;
             this.style.backgroundColor = '#eaf2ff';
         });

         $('#tbWeiXiuList tr').mouseout(function () {
             this.style.backgroundColor = tmp;
         });
     });
 
</script>


<body>
    <form name="form1" method="post" action="saleAfter_weiXiuLiShiList.aspx?saleAfterWeiXiuGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&amp;dTue+Jan+06+2015+12%3a18%3a25+GMT+0800" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTEwNTAyNDU1MTkPZBYCAgMPZBYCAgEPFgIeC18hSXRlbUNvdW50AgYWDAIBD2QWAmYPFQskZmNjZGUwMzYtODQxNS00OWIzLWFkMDktZDdjYTRkYzUyODcxDOa3seS4mumbt+WFiw5KREQyMDE1MDEwNjAwNwxTTDBYMTUwMTM2NTIJ57KkQjdXQjg4CeW8oOWFiOi1ngnnvZfkvJ/lpYcLMTM3Mjg4MjMyODMFUlgyNzAP6LSi5Yqh5pS25qy+5LitETIwMTUtMS02IDEwOjAyOjEwZAICD2QWAmYPFQskN2MyNWNkNzItYzk5MS00ZGNhLWE1Y2QtOGFjZjg1Y2ViMjkzDOa3seS4mumbt+WFiw5KREQyMDE0MTAwNTAxNgxTTDBYMTUwMTAxOTUJ57KkQjdXQjg4CeW8oOWFiOi1ngnnvZfkvJ/lpYcLMTM3Mjg4MjMyODMFUlgyNzAJ5bey5Ye65bqTEjIwMTQtMTAtNSAxNDo0NjozMGQCAw9kFgJmDxULJGY5N2UyYWZmLWM3NTEtNGJlZi1hZjVhLTcxM2M2Y2MwMTVhNAzmt7HkuJrpm7flhYsOSkREMjAxNDA3MTAwMDIMU0wwWDE1MDA3MzY3CeeypEI3V0I4OAnlvKDlhYjotZ4J572X5Lyf5aWHCzEzNzI4ODIzMjgzBVJYMjcwCeW3suWHuuW6kxEyMDE0LTctMTAgOToyNDoyMmQCBA9kFgJmDxULJDE3N2Y0Y2ZmLTU5Y2ItNGFhOS05MDUwLTk4ZGM1MGFjNWRiOAzmt7HkuJrpm7flhYsOSkREMjAxNDAxMjcwMDQMU0wwWDE1MDAyNzA0CeeypEI3V0I4OAnlvKDlhYjotZ4J572X5Lyf5aWHCzEzNzI4ODIzMjgzBVJYMjcwCeW3suWHuuW6kxIyMDE0LTEtMjcgMTA6MDc6NTNkAgUPZBYCZg8VCyRhNjM0NTQzZC04ZGVkLTRmZjQtODk3Yy1kN2UzYjBkOTUxZGUM5rex5Lia6Zu35YWLDkpERDIwMTQwMTA3MDI3DFNMMFgxNTAwMjM4MwnnsqRCN1dCODgJ5byg5YWI6LWeCee9l+S8n+m9kAsxMzcyODgyMzI4MwVSWDI3MAnlt7Llh7rlupMRMjAxNC0xLTcgMTU6NDM6MzZkAgYPZBYCZg8VCyQ3ZjBjZjljNS00OGJjLTQ0M2MtOTNjZC00MTgzMDA5Yjg0MGQM5rex5Lia6Zu35YWLDkpERDIwMTMwOTA0MDA3DFNMMFgxNTAwMDIwNgnnsqRCN1dCODgJ5r2Y5pmv6ZSLCee9l+S8n+m9kAsxMzcyODgyMzI4MwVSWDI3MAnlt7Llh7rlupMRMjAxMy05LTQgMTM6NTA6MTVkZM6kznaELyuysPUAnBOayB9MuuWN" />
</div>

    <div style="margin-left:10px;margin-right:10px;margin-top:5px;">
     
     维修信息列表:

         <!--维修列表 start-->
     <table border="1" id="tbWeiXiuList" cellpadding="0" cellspacing="0" width="100%" style="border-collapse:collapse;border:1px solid gray;">
       
        <tr>
        <td>工单号</td><td>协议单号</td><td>车牌号</td><td>服务顾问</td><td>联系人</td>
        <td>联系人手机</td><td>车系</td><td>单据状态</td><td>接车日期</td>
        </tr>
        
        <tr onclick=saleAfterLiShiShow('fccde036-8415-49b3-ad09-d7ca4dc52871')>
        <td>[深业雷克]JDD20150106007</td><td>SL0X15013652</td><td>粤B7WB88</td>
        <td>张先赞</td><td>罗伟奇</td>
        <td>13728823283</td><td>RX270</td>
        <td>财务收款中</td><td>2015-1-6 10:02:10</td>
        </tr>
        
        <tr onclick=saleAfterLiShiShow('7c25cd72-c991-4dca-a5cd-8acf85ceb293')>
        <td>[深业雷克]JDD20141005016</td><td>SL0X15010195</td><td>粤B7WB88</td>
        <td>张先赞</td><td>罗伟奇</td>
        <td>13728823283</td><td>RX270</td>
        <td>已出库</td><td>2014-10-5 14:46:30</td>
        </tr>
        
        <tr onclick=saleAfterLiShiShow('f97e2aff-c751-4bef-af5a-713c6cc015a4')>
        <td>[深业雷克]JDD20140710002</td><td>SL0X15007367</td><td>粤B7WB88</td>
        <td>张先赞</td><td>罗伟奇</td>
        <td>13728823283</td><td>RX270</td>
        <td>已出库</td><td>2014-7-10 9:24:22</td>
        </tr>
        
        <tr onclick=saleAfterLiShiShow('177f4cff-59cb-4aa9-9050-98dc50ac5db8')>
        <td>[深业雷克]JDD20140127004</td><td>SL0X15002704</td><td>粤B7WB88</td>
        <td>张先赞</td><td>罗伟奇</td>
        <td>13728823283</td><td>RX270</td>
        <td>已出库</td><td>2014-1-27 10:07:53</td>
        </tr>
        
        <tr onclick=saleAfterLiShiShow('a634543d-8ded-4ff4-897c-d7e3b0d951de')>
        <td>[深业雷克]JDD20140107027</td><td>SL0X15002383</td><td>粤B7WB88</td>
        <td>张先赞</td><td>罗伟齐</td>
        <td>13728823283</td><td>RX270</td>
        <td>已出库</td><td>2014-1-7 15:43:36</td>
        </tr>
        
        <tr onclick=saleAfterLiShiShow('7f0cf9c5-48bc-443c-93cd-4183009b840d')>
        <td>[深业雷克]JDD20130904007</td><td>SL0X15000206</td><td>粤B7WB88</td>
        <td>潘景锋</td><td>罗伟齐</td>
        <td>13728823283</td><td>RX270</td>
        <td>已出库</td><td>2013-9-4 13:50:15</td>
        </tr>
        
       

     </table>
    <!--维修列表 end-->

    </div>
    
<div>

    <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="10A2B690" />
</div></form>

    <script language="javascript" type="text/javascript">
        function winClose() {
            parWinClose();
            return false;
        }


        function saleAfterLiShiShow(saleAfterGuid) {
            //parent.location.href ='../saleAfterManage/saleAfter_Index.aspx?tabId=2&saleAfterWeiXiuGuid=' + saleAfterGuid + '&d=' + new Date();
            z = window.open('../saleAfterManage/saleAfter_weiXiuLiShiDetailShowBySaleAfterGuid.aspx?saleAfterGuid=' + saleAfterGuid + '&d=' + new Date(), '维修历史查看', 'height=900, width=990, top=100, left=100, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no')
            z.focus();
            return false;
        }
    </script>

</body>
</html>