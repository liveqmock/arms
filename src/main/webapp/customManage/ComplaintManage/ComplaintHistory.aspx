
<html >
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


        function show(BillGuid, ComplaintDeptId, CustGuid) {
            var href = " ../ComplaintManage/ComplaintTop.aspx?ID=" + BillGuid + "&TouSuBuMen_ID=" + ComplaintDeptId + "&CustGuid=" + CustGuid + "&d=" + new Date();
            var SizeZ = 'height=' + (screen.availHeight - 20) + ',width=' + (screen.availWidth - 10) + ',left=0,top=0,toolbar=no,resizable=yes,status=no,menubar=no,scrollbars=yes';
            try {
                if (!openStatus2.closed) {
                    alert("投诉处理窗口 已在外部打开");
                    openStatus2.focus();
                    return false;
                }
                else {
                    openStatus2 = window.open(href, '投诉处理', SizeZ);
                }
            }
            catch (Error) {
                openStatus2 = window.open(href, '投诉处理', SizeZ);
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

            if (parseFloat(t.value) < 1) { t.value = "1"; }

            if (parseFloat(t.value) > parseFloat(document.getElementById("txtMaxPage").value)) {
                t.value = document.getElementById("txtMaxPage").value;
            }

            return true;

        }

    </script>

<body>
    <form name="form1" method="post" action="ComplaintHistory.aspx?vehicleId=15055ad5-3292-4d6d-ba2e-ecc3c4694611&amp;custGuid=15055ad5-3292-4d6d-ba2e-ecc3c4694611&amp;dThu+Jan+08+2015+14%3a47%3a55+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNDM1NDU3OTczZGSMr1LOvZQgFtPLQlFynJTwNu+qjw==" />
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

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="DDC377D5" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBALJivOjBALvvc5KAoW9wZcMAu6XvvQEJ8TIFudF8xAidqsLoNKXOyP7Row=" />
</div></form>

    <script language="javascript" type="text/javascript" >
    
    </script>


</body>
</html>