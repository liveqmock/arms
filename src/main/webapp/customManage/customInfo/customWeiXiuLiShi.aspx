
<html> 
    <title></title>
     

    <style type="text/css">
        body
        {
        	margin-top:0px;
        	margin-left:10px;
        	margin-right:0px;
        	margin-bottom:0px;
        	}
     td,div{
      font-size:12px;
      white-space:nowrap;
     }
    </style>

    <script language="javascript" type="text/javascript" >
        var changColorId = ""; //改变背景色id
        var changeColorColor = ""; //背景颜色
        //改变背景色函数
        function changColor(obj) {
            changeColorColor = obj.style.backgroundColor;
            if (changColorId != "" && changColorId != null) { changColorId.style.backgroundColor = changeColorColor; }
            obj.style.backgroundColor = "#EEE3CB";
            changColorId = obj;
        }


        function show(saleAfterGuid) { 
            //var href = "../../saleAfterManage/saleAfterWeiXiuLiShiDetailShowBySaleAfterGuid.aspx?tabId=2&saleAfterGuid=" + saleAfterGuid+"&d="+new Date();
            var href = "../../saleAfterManage/saleAfter_weiXiuLiShiDetailShowBySaleAfterGuid.aspx?tabId=2&saleAfterGuid=" + saleAfterGuid + "&d=" + new Date();
            var SizeZ = 'height=' + (screen.availHeight - 20) + ',width=' + (screen.availWidth - 10) + ',left=0,top=0,toolbar=no,resizable=yes,status=no,menubar=no,scrollbars=yes';
            try {
                openStatus2 = window.open(href, '详细维修记录', SizeZ);
            }
            catch (Error) {
                openStatus2 = window.open(href, '详细维修记录', SizeZ);
            }

        }

        function pageGo() {
            var t = document.getElementById("txtThisPage");
            var myReg = /^\d+$/;
            var pageN = t.value;
            if (!myReg.test(pageN)) {
                alert("输入数字无效!请重新输入!");
                t.value = "";
                t.focus();
                return false;
            }

            if (parseFloat(t.value) < 1) {t.value = "1";}

            if (parseFloat(t.value) > parseFloat(document.getElementById("txtMaxPage").value)) {
                t.value = document.getElementById("txtMaxPage").value;
            }

            return true;

        }

    </script>

<body>
    <form name="form1" method="post" action="customWeiXiuLiShi.aspx?vehicleId=15055ad5-3292-4d6d-ba2e-ecc3c4694611&amp;cusGuid=15055ad5-3292-4d6d-ba2e-ecc3c4694611&amp;d=Thu+Jan+08+2015+14%3a42%3a59+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTEwNDM3MjgyNjYPZBYCZg9kFgJmDxYCHgtfIUl0ZW1Db3VudAIFFgoCAQ9kFgJmDxUOJGZkM2ZjMTg3LTViNGYtNDU5ZS05MDM2LTU1ZjllZGEwZTBiNwExDldYRDIwMTQxMTA0MDA2Cei1o0cwUzYyOBEyMDE0LTExLTQgOToyODo1NgYxMTEwNzQJ5bey5oiQ5YqfCeS4jea7oeaEjwbpmYjmiJASMjAxNC0xMS02IDExOjAwOjU1BuaIkOWKnwExQ+W7uuiuruabtOaNouepuuawlOagvCDmuIXmtJfoioLmsJTpl6gg55qu5bimIOeBq+iKseWhniDmsKLmsKfpmaTnorMAZAICD2QWAmYPFQ4kMWIwZTc4MmEtZTI2MC00ZGI4LThmM2EtZmRmMjc1N2ZmMzVhATIOV1hEMjAxNDEwMTAwMDcJ6LWjRzBTNjI4EzIwMTQtMTAtMTAgMTA6MDI6MDIGMTA4OTQ1CeW3suaIkOWKnwbmu6HmhI8G6ZmI5oiQEzIwMTQtMTAtMTMgMTA6MTY6MTUG5oiQ5YqfATEAAGQCAw9kFgJmDxUOJDRjYmFjYjhjLTNjZTItNGIyZi1iM2JmLTE3MTdjZTVmZjEwMAEzDldYRDIwMTQwODI2MDA3Cei1o0cwUzYyOBEyMDE0LTgtMjYgOTozNjoxMAYxMDU3MDYJ5bey5oiQ5YqfBua7oeaEjwbpmYjmiJASMjAxNC04LTI3IDE1OjQ2OjQ5BuaIkOWKnwExJOW7uuiuruabtOaNoueBq+iKseWhnuWSjOawouawp+mZpOeiswBkAgQPZBYCZg8VDiQyMjM5NzAyMS04ZjJlLTQ0ZmMtODg2Mi1jZDI3MDQxZmNjZjEBNA5XWEQyMDE0MDUyMzAwNAnotaNHMFM2MjgRMjAxNC01LTIzIDg6NTg6MTEFOTk5NzIJ5bey5oiQ5YqfBua7oeaEjwbpmYjmiJASMjAxNC01LTI1IDEwOjQ3OjU4BuaIkOWKnwExFeW7uuiuruabtOaNouepuuiwg+agvABkAgUPZBYCZg8VDiQwZjY5ODI3Yi01NzU2LTQ4NjMtODM5Ni04MTk2MDc1NWUzZGUBNQ5XWEQyMDE0MDMxMDAwOAnotaNHMFM2MjgSMjAxNC0zLTEwIDEwOjExOjQ5BTk0ODU5CeW3suaIkOWKnwbmu6HmhI8G6ZmI5oiQEjIwMTQtMy0xMiAxMDoxNzo0MAbmiJDlip8BMQAAZGQwCYp+KaQx6IFWlCLi0TUWr4hDNw==" />
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


    <div style="height:135px;width:98%;overflow:scroll;">
      <table  border="1" id="tb" style="border:1px solid gray;border-collapse:collapse;width:98%;" >
      
        <tr>
        <td style="width:30px;">NO.</td>
        <td>维修单号</td>
        <td>车牌号码</td>
        <td>进厂时间</td>
        <td>里程</td>
        <td>回访状态</td>
        <td>用户意见</td>
        <td>最后联系人</td>
        <td>最后联系时间</td>
        <td>最后联系结果</td>
        <td>联系次数</td>
        <td>维修备注</td>
        <td></td>
        </tr>
        
        <tr  onclick="changColor(this);" ondblclick="show('fd3fc187-5b4f-459e-9036-55f9eda0e0b7')"  >
        <td  style="width:30px;text-align:center;">1</td>
        <td>WXD20141104006</td>
        <td>赣G0S628</td>
        <td>2014-11-4 9:28:56</td>
        <td>111074</td>
        <td>已成功</td>
        <td>不满意</td>
        <td>陈成</td>
        <td>2014-11-6 11:00:55</td>
        <td>成功</td>
        <td>1</td>
        <td>建议更换空气格 清洗节气门 皮带 火花塞 氢氧除碳</td>
        <td></td>
        </tr>
        
        <tr  onclick="changColor(this);" ondblclick="show('1b0e782a-e260-4db8-8f3a-fdf2757ff35a')"  >
        <td  style="width:30px;text-align:center;">2</td>
        <td>WXD20141010007</td>
        <td>赣G0S628</td>
        <td>2014-10-10 10:02:02</td>
        <td>108945</td>
        <td>已成功</td>
        <td>满意</td>
        <td>陈成</td>
        <td>2014-10-13 10:16:15</td>
        <td>成功</td>
        <td>1</td>
        <td></td>
        <td></td>
        </tr>
        
        <tr  onclick="changColor(this);" ondblclick="show('4cbacb8c-3ce2-4b2f-b3bf-1717ce5ff100')"  >
        <td  style="width:30px;text-align:center;">3</td>
        <td>WXD20140826007</td>
        <td>赣G0S628</td>
        <td>2014-8-26 9:36:10</td>
        <td>105706</td>
        <td>已成功</td>
        <td>满意</td>
        <td>陈成</td>
        <td>2014-8-27 15:46:49</td>
        <td>成功</td>
        <td>1</td>
        <td>建议更换火花塞和氢氧除碳</td>
        <td></td>
        </tr>
        
        <tr  onclick="changColor(this);" ondblclick="show('22397021-8f2e-44fc-8862-cd27041fccf1')"  >
        <td  style="width:30px;text-align:center;">4</td>
        <td>WXD20140523004</td>
        <td>赣G0S628</td>
        <td>2014-5-23 8:58:11</td>
        <td>99972</td>
        <td>已成功</td>
        <td>满意</td>
        <td>陈成</td>
        <td>2014-5-25 10:47:58</td>
        <td>成功</td>
        <td>1</td>
        <td>建议更换空调格</td>
        <td></td>
        </tr>
        
        <tr  onclick="changColor(this);" ondblclick="show('0f69827b-5756-4863-8396-81960755e3de')"  >
        <td  style="width:30px;text-align:center;">5</td>
        <td>WXD20140310008</td>
        <td>赣G0S628</td>
        <td>2014-3-10 10:11:49</td>
        <td>94859</td>
        <td>已成功</td>
        <td>满意</td>
        <td>陈成</td>
        <td>2014-3-12 10:17:40</td>
        <td>成功</td>
        <td>1</td>
        <td></td>
        <td></td>
        </tr>
        
       </table>
    </div>
    <div>
    <!--分页代码start-->
    共4页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border:none;border-bottom:1px solid black;width:30px;" />
    <a onclick="return pageGo();" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
    <!--分页代码end-->
    </div>

    
    <input name="txtMaxPage" type="text" value="4" id="txtMaxPage" style="display:none;" />

    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="73581985" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBAKf4o6iBALvvc5KAoW9wZcMAu6XvvQE/GE93c4RwsrbypFD2RFvzOA7hCs=" />
</div></form>

    <script language="javascript" type="text/javascript" >
    
    </script>


</body>
</html>