

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
    <form name="form1" method="post" action="customZhaoLanLiShi.aspx?vehicleId=15055ad5-3292-4d6d-ba2e-ecc3c4694611&amp;cusGuid=15055ad5-3292-4d6d-ba2e-ecc3c4694611&amp;dThu+Jan+08+2015+14%3a47%3a57+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNTM4NjM1NjUyZGQfzs2dmkSgD2OvHMnVVeSDUE/Y6Q==" />
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
    共0页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border:none;border-bottom:1px solid black;width:30px;" />
    <a onclick="return pageGo();" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
    <!--分页代码end-->
    </div>

    
    <input name="txtMaxPage" type="text" value="0" id="txtMaxPage" style="display:none;" />

    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="31C9A632" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBAKkndWvBALvvc5KAoW9wZcMAu6XvvQEhgja4gnnrpi2T/EsBvoK0M3Nqc4=" />
</div></form>

    <script language="javascript" type="text/javascript" >
    
    </script>


</body>
</html>