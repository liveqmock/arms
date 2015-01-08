 
 
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


        function show(huiFangId, lianXiId) {
            parent.showHuiFangLiShi(huiFangId, lianXiId);
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

            if (parseFloat(t.value) < 1) { t.value = "1"; }

            if (parseFloat(t.value) > parseFloat(document.getElementById("txtMaxPage").value)) {
                t.value = document.getElementById("txtMaxPage").value;
            }

            return true;

        }

    </script>

<body>
    <form name="form1" method="post" action="customHuiFangLiShi.aspx?vehicleId=15055ad5-3292-4d6d-ba2e-ecc3c4694611&amp;saleAfterGuid=fd3fc187-5b4f-459e-9036-55f9eda0e0b7&amp;cusGuid=15055ad5-3292-4d6d-ba2e-ecc3c4694611&amp;d=Thu+Jan+08+2015+14%3a47%3a49+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNTM4NjM1NjUyD2QWAmYPZBYCZg8WAh4LXyFJdGVtQ291bnQCARYCAgEPZBYCZg8VCSRjMzM5MmYxZi1jNWYxLTQzMzEtODA4MC01YzZmY2U4MDRlYWEkNTVlNDQwYzktMTJhZS00MThiLTlkZWEtZmFhNGQ4ODk4NWFmATESMjAxNC0xMS02IDExOjAwOjU1CzEzODc5MjkyNDMyBumZiOaIkAbmiJDlip9y5a6i5oi36K+06L2m5a2Q6YeM5aSW6YO95rKh5pyJ5riF5rSX5bmy5YeA77yM5L2g5Lus6L+Z5rSX6L2m5oSf6KeJ5q+U6L6D6ams6JmO77yM5bCx5piv6ZqP5L6/5rSX5LiL5bqU5LuY5beu5LqL44CCAGRknsz7ihDHhDloqjSOTTAw1JkpGBk=" />
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
         <td>回访时间</td>
         <td>回访号码</td>
         <td>回访人</td>
         <td>外拨结果</td>   
         <td>用户意见</td>   
         <td>备注</td>
        </tr>
        
        <tr  onclick="changColor(this);"  ondblclick=show('c3392f1f-c5f1-4331-8080-5c6fce804eaa','55e440c9-12ae-418b-9dea-faa4d88985af')   >
        <td  style="width:30px;text-align:center;">1</td>
        <td>2014-11-6 11:00:55</td> 
         <td>13879292432</td>
         <td>陈成</td>
         <td>成功</td>   
         <td>客户说车子里外都没有清洗干净，你们这洗车感觉比较马虎，就是随便洗下应付差事。</td>   
         <td></td>
        </tr>
        
       </table>
    </div>
    <div>
    <!--分页代码start-->
    共1页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border:none;border-bottom:1px solid black;width:30px;" />
    <a onclick="return pageGo();" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
    <!--分页代码end-->
    </div>

    
    <input name="txtMaxPage" type="text" value="1" id="txtMaxPage" style="display:none;" />

    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="1F75112E" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBAL19PE2Au+9zkoChb3BlwwC7pe+9AQnJK+L5wsrUrQLVpy6yKCBLMQUTg==" />
</div></form>

    <script language="javascript" type="text/javascript" >
    
    </script>


</body>
</html>